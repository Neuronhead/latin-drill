-- ── Latina Exercitia — remove duplicate vocabulary rows, prevent recurrence ──
-- 2026-10-12
--
-- Cause: ch9_vocab.sql and ch10_vocab.sql were each run twice, so every
-- chapter 9 and 10 word existed twice. The page assumes one row per word per
-- chapter, so the copies interfered (stray red boxes, cursor jumping,
-- duplicate answers accepted).
--
-- Part 1 deletes the later copy of each duplicated item, keeping the original
-- (lowest id). The copies are identical, and no saved scores point at any
-- drill row, so nothing is lost.
-- Part 2 adds a rule so running a content file twice fails with an error
-- ("duplicate key value violates unique constraint") instead of silently
-- inserting a second copy.
--
-- Run the whole file once. Safe to re-run.

-- Part 1: remove the duplicates (expect "38 rows affected" the first time)
delete from drills d
using drills keep
where d.type = keep.type
  and d.session_tag is not distinct from keep.session_tag
  and coalesce(d.content->>'lemma', d.content->>'display', d.content->>'phrase')
    = coalesce(keep.content->>'lemma', keep.content->>'display', keep.content->>'phrase')
  and d.id > keep.id;

-- Part 2: one row per item per content file, from now on
create unique index if not exists drills_one_item_per_file
  on drills (type, session_tag,
             (coalesce(content->>'lemma', content->>'display', content->>'phrase')));

-- Check: both should now say 20 and 18
select session_tag, count(*) from drills
where session_tag in ('wheelock_ch10_vocab', 'wheelock_ch9_vocab')
group by session_tag;
