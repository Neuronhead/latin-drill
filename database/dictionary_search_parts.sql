-- dictionary_search_parts.sql
-- Latina Exercitia: make dictionary search also match principal parts / dictionary forms
-- (e.g. "vici" finds vinco, vincere, vici, victus; "regis" finds rex, regis).
-- Inflected forms that are not dictionary forms (vicit, regem) are deliberately still not matched.
--
-- Changes only the search function and adds one index. No rows are inserted or changed.
-- Safe to re-run: uses "if not exists" and "create or replace".
-- Reversible: re-run dictionary_schema.sql (restores the previous function), then
--   drop index if exists public.dictionary_parts_trgm_idx;

-- Index for whole-word matches inside the principal parts (normalised j->i, v->u like head_key)
create index if not exists dictionary_parts_trgm_idx
  on public.dictionary using gin (translate(lower(coalesce(parts, '')), 'jv', 'iu') extensions.gin_trgm_ops);

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
  ),
  k2 as (
    select lat, eng,
           regexp_replace(lat, '([.^$*+?()\[\]{}|\\])', '\\\1', 'g') as lat_re
    from k
  )
  select d.*
  from public.dictionary d, k2 k
  where length(k.lat) >= 2
    and (
      d.head_key like k.lat || '%'
      or translate(lower(coalesce(d.parts, '')), 'jv', 'iu') ~ ('\m' || k.lat_re || '\M')
      or lower(d.glosses) ~ ('\m' || k.eng || '\M')
    )
  order by
    case when d.head_key = k.lat then 0                                                          -- exact Latin headword
         when translate(lower(coalesce(d.parts, '')), 'jv', 'iu') ~ ('\m' || k.lat_re || '\M') then 1 -- exact principal part
         when lower(d.glosses) ~ ('^\W*' || k.eng || '\M') then 2                                -- English word opens the first sense
         when d.head_key like k.lat || '%' and d.freq_code in ('A','B','C') then 3               -- common Latin word starting with query
         when lower(d.glosses) ~ ('\m' || k.eng || '\M') then 4                                  -- English word anywhere
         else 5 end,                                                                             -- rarer Latin prefix matches
    position(coalesce(d.freq_code, 'X') in 'ABCDEXFINM'),
    length(d.headword),
    d.id
  limit least(greatest(coalesce(lim, 20), 1), 50);
$$;

grant execute on function public.dict_search(text, integer) to anon, authenticated;
