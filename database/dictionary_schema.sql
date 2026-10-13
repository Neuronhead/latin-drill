-- dictionary_schema.sql
-- Latina Exercitia: general Latin-English dictionary table (source: Whitaker's Words, DICTLINE.GEN).
-- Creates the table, search indexes, read-only access, and a ranked search function.
-- The rows themselves are loaded separately by CSV import (dictionary.csv) in the Table Editor.
--
-- Safe to re-run: every statement uses "if not exists" or "create or replace".
-- Reversible: drop function if exists public.dict_search(text, integer); drop table if exists public.dictionary;

-- 1. Trigram extension (for fast "contains this word" searches on the English glosses)
create extension if not exists pg_trgm with schema extensions;

-- 2. The table. Column names must match the CSV header exactly.
create table if not exists public.dictionary (
  id         integer primary key,
  headword   text not null,            -- e.g. amo
  parts      text,                     -- e.g. amare, amavi, amatus
  pos        text,                     -- n, v, adj, adv, prep, conj, pron, num, interj
  gender     text,                     -- m, f, n, m/f (nouns only)
  note       text,                     -- e.g. 1st conj., trans. / 3rd decl. / + abl
  glosses    text not null,            -- English senses separated by "; "
  freq_code  text,                     -- Whitaker frequency: A (very frequent) ... F (very rare), X unknown
  age        text,                     -- period label where Whitaker gives one (e.g. late, medieval)
  head_key   text not null             -- headword lowercased, no macrons, j->i, v->u (for matching)
);

comment on table public.dictionary is
  'General Latin-English dictionary from Whitaker''s Words (free for any use). Not Wheelock''s wording.';

-- 3. Indexes
-- Latin lookups: exact match and "starts with"
create index if not exists dictionary_head_key_idx
  on public.dictionary (head_key text_pattern_ops);
-- English lookups: whole-word match anywhere in the glosses
create index if not exists dictionary_glosses_trgm_idx
  on public.dictionary using gin (lower(glosses) extensions.gin_trgm_ops);

-- 4. Read-only access for the web page (signed in or not). No insert/update/delete for clients.
alter table public.dictionary enable row level security;

drop policy if exists "dictionary is readable by everyone" on public.dictionary;
create policy "dictionary is readable by everyone"
  on public.dictionary for select
  to anon, authenticated
  using (true);

grant select on public.dictionary to anon, authenticated;

-- 5. Search function: one call returns ranked results for either a Latin or an English query.
--    Ranking: exact Latin headword > English word opening a gloss > common Latin prefix match
--    > English word anywhere > rare Latin prefix match; then by Whitaker frequency (common first),
--    then shorter headwords first.
create or replace function public.dict_search(q text, lim integer default 20)
returns setof public.dictionary
language sql
stable
security invoker
set search_path = public, extensions
as $$
  with k as (
    select
      translate(lower(trim(q)), 'jvāēīōūȳăĕĭŏŭ', 'iuaeiouyaeiou') as lat,
      regexp_replace(lower(trim(q)), '([.^$*+?()\[\]{}|\\])', '\\\1', 'g') as eng
  )
  select d.*
  from public.dictionary d, k
  where length(k.lat) >= 2
    and (
      d.head_key like k.lat || '%'
      or lower(d.glosses) ~ ('\m' || k.eng || '\M')
    )
  order by
    case when d.head_key = k.lat then 0                                            -- exact Latin headword
         when lower(d.glosses) ~ ('^\W*' || k.eng || '\M') then 1                  -- English word opens the first sense
         when d.head_key like k.lat || '%' and d.freq_code in ('A','B','C') then 2 -- common Latin word starting with query
         when lower(d.glosses) ~ ('\m' || k.eng || '\M') then 3                    -- English word anywhere
         else 4 end,                                                               -- rarer Latin prefix matches
    position(coalesce(d.freq_code, 'X') in 'ABCDEXFINM'),
    length(d.headword),
    d.id
  limit least(greatest(coalesce(lim, 20), 1), 50);
$$;

grant execute on function public.dict_search(text, integer) to anon, authenticated;
