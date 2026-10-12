-- ── Latina Exercitia — fugio: four sense groups, as in the textbook ──────
-- Wheelock gives: to flee, hurry away; escape; go into exile; avoid, shun.
-- Each semicolon starts a new sense, so "escape" and "go into exile" are
-- separate groups (previously entered together as one).
--
-- Only needed if ch10_vocab.sql was run BEFORE this fix. The current
-- ch10_vocab.sql already contains it. Safe to re-run.

update drills
set content = jsonb_set(content, '{meanings}',
  '[{"items": ["to flee", "to hurry away"]},
    {"items": ["to escape"]},
    {"items": ["to go into exile"]},
    {"items": ["to avoid", "to shun"]}]'::jsonb)
where session_tag = 'wheelock_ch10_vocab'
  and content->>'lemma' = 'fugio';
