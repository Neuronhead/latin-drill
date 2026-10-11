-- ── Latina Exercitia — quoniam: accept "in as much as" ───────────────────
-- Only needed if ch10_vocab.sql was ALREADY run before 2026-10-12 07:45.
-- (The current ch10_vocab.sql already contains this change.)
--
-- Makes "inasmuch as" and "in as much as" two spellings of ONE answer:
-- still one box, either is marked correct. Needs the index.html that
-- understands "|" inside a meaning.
--
-- Safe to re-run. Undo: run it again with the right-hand list changed back
-- to ["since", "inasmuch as"].

update drills
set content = jsonb_set(content, '{meanings}',
                        '[{"items": ["since", "inasmuch as|in as much as"]}]'::jsonb)
where session_tag = 'wheelock_ch10_vocab'
  and content->>'lemma' = 'quoniam';
