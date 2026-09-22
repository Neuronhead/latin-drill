-- ── Error tracking on scores ──────────────────────────────────────
-- Adds two optional counts to each saved score. Safe to re-run.
--
-- errors   = distinct wrong answers entered during the drill
--            (a field left blank at Finish counts as 1).
--            In plain "Check Answers" mode: fields wrong at check.
-- revealed = fields filled by Show Answers that weren't already correct
--            (Check-as-I-go mode only; NULL in plain mode).
--
-- Rows saved before this change stay NULL = "not recorded" (not zero).
-- To undo:  alter table scores drop column errors, drop column revealed;

alter table scores add column if not exists errors   int;
alter table scores add column if not exists revealed int;
