-- dictionary_pattern_search.sql
-- Latina Exercitia: wildcard / regular-expression search over the general dictionary
-- (Whitaker's Words), used by the search box when the query is a pattern:
--   *erint, am?vi        (wildcards; the page turns them into an anchored regex)
--   /^re/, /(a|e)nt$/    (regular expressions between slashes)
--
-- Adds ONE new function, public.dict_pattern. Nothing else changes:
--   * no rows are inserted or changed
--   * the existing dict_search function (ordinary searches) is not touched
-- Safe to re-run ("create or replace").
-- Reversible: drop function if exists public.dict_pattern(text, text, integer);
--
-- How it matches (case-insensitive, PostgreSQL regular expressions):
--   lat_re  is tested against each Latin dictionary form of an entry, one word at a time:
--           the headword and each principal part, spelled like head_key (j -> i, v -> u).
--   eng_re  is tested against each English sense, one at a time
--           (the glosses split at ";" and ",").
-- The page prepares both patterns (j/v spelling, \b -> \y, macrons removed).
-- Ordering: entries matched on the Latin first, then by Whitaker frequency, then shorter headwords.
-- Speed: one pass over 37,857 entries, about 0.5 s; the anon role's 3 s statement_timeout
-- stops any pathological pattern. An invalid pattern raises an error, which the page shows.

create or replace function public.dict_pattern(lat_re text, eng_re text, lim integer default 20)
returns setof public.dictionary
language sql
stable
security invoker
set search_path = public, extensions
as $$
  select d.*
  from public.dictionary d
  cross join lateral (
    select
      exists (
        select 1
        from regexp_split_to_table(translate(lower(coalesce(d.head_key, '') || ' ' || coalesce(d.parts, '')), 'jv', 'iu'), '[^a-z]+') w
        where w <> '' and w ~* lat_re
      ) as lat_hit,
      exists (
        select 1
        from regexp_split_to_table(lower(coalesce(d.glosses, '')), '\s*[;,]\s*') s
        where btrim(s) <> '' and btrim(s) ~* eng_re
      ) as eng_hit
  ) m
  where length(coalesce(lat_re, '')) between 1 and 300
    and length(coalesce(eng_re, '')) between 1 and 300
    and (m.lat_hit or m.eng_hit)
  order by (not m.lat_hit),
           position(coalesce(d.freq_code, 'X') in 'ABCDEXFINM'),
           length(d.headword),
           d.id
  limit least(greatest(coalesce(lim, 20), 1), 50);
$$;

revoke all on function public.dict_pattern(text, text, integer) from public;
grant execute on function public.dict_pattern(text, text, integer) to anon, authenticated;

-- Check (expect 1): select count(*) from pg_proc where proname = 'dict_pattern';
