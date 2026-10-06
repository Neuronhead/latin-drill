-- ── Latina Exercitia — Chapter 9 Demonstratives: hic, ille, iste ──────────
-- Wheelock's Latin, 7th edition, Capvt IX.
-- Run in Supabase SQL Editor.
-- Last updated: 2026-10-06
--
-- New drill type 'demonstrative', shown in its own "Demonstratives" tab.
-- Same content shape as the 'declension' type (1st & 2nd Declension tab):
-- a full paradigm, singular and plural, masculine / feminine / neuter.
--
-- Demonstratives have no vocative, so each paradigm lists five cases; the
-- tab draws its rows from whichever cases the paradigm contains.
--
-- "group" sets the selector row the word appears under, so later additions
-- (e.g. the special -ius adjectives: unus, solus, totus...) can sit in their
-- own row in the same tab with no code change.
--
-- Macrons dropped, as elsewhere: the ablative singular hoc (long o) is typed
-- the same as the nominative hoc.
--
-- Reversible: delete from drills where session_tag = 'wheelock_ch9_demonstratives';

insert into drills (type, lp_multiplier, session_tag, content) values
  ('demonstrative', 1.2, 'wheelock_ch9_demonstratives',
   '{"lemma": "hic", "chapter": 9, "group": "Demonstratives", "display": "hic / haec / hoc", "meaning": "this, these; the latter", "is_noun": false, "note": "Refers to what is near the speaker. Watch the -c forms (from the old enclitic -ce), the genitive huius and dative huic in all genders (ui is a diphthong: huius = hui-yus), and neuter plural haec, identical to the feminine singular.", "paradigm": {"s": {"Nominative": ["hic", "haec", "hoc"], "Genitive": ["huius", "huius", "huius"], "Dative": ["huic", "huic", "huic"], "Accusative": ["hunc", "hanc", "hoc"], "Ablative": ["hoc", "hac", "hoc"]}, "p": {"Nominative": ["hi", "hae", "haec"], "Genitive": ["horum", "harum", "horum"], "Dative": ["his", "his", "his"], "Accusative": ["hos", "has", "haec"], "Ablative": ["his", "his", "his"]}}}'),
  ('demonstrative', 1.2, 'wheelock_ch9_demonstratives',
   '{"lemma": "ille", "chapter": 9, "group": "Demonstratives", "display": "ille / illa / illud", "meaning": "that, those; the former; the famous", "is_noun": false, "note": "Refers to what is distant from both speaker and listener. Declines like magnus except the genitive singular illius and dative singular illi in all genders, and the neuter -ud in the nominative and accusative singular.", "paradigm": {"s": {"Nominative": ["ille", "illa", "illud"], "Genitive": ["illius", "illius", "illius"], "Dative": ["illi", "illi", "illi"], "Accusative": ["illum", "illam", "illud"], "Ablative": ["illo", "illa", "illo"]}, "p": {"Nominative": ["illi", "illae", "illa"], "Genitive": ["illorum", "illarum", "illorum"], "Dative": ["illis", "illis", "illis"], "Accusative": ["illos", "illas", "illa"], "Ablative": ["illis", "illis", "illis"]}}}'),
  ('demonstrative', 1.2, 'wheelock_ch9_demonstratives',
   '{"lemma": "iste", "chapter": 9, "group": "Demonstratives", "display": "iste / ista / istud", "meaning": "that of yours, that; such", "is_noun": false, "note": "Refers to what is near the person addressed; sometimes contemptuous (iste tyrannus, that despicable tyrant). Declines exactly like ille: genitive singular istius, dative singular isti, neuter istud.", "paradigm": {"s": {"Nominative": ["iste", "ista", "istud"], "Genitive": ["istius", "istius", "istius"], "Dative": ["isti", "isti", "isti"], "Accusative": ["istum", "istam", "istud"], "Ablative": ["isto", "ista", "isto"]}, "p": {"Nominative": ["isti", "istae", "ista"], "Genitive": ["istorum", "istarum", "istorum"], "Dative": ["istis", "istis", "istis"], "Accusative": ["istos", "istas", "ista"], "Ablative": ["istis", "istis", "istis"]}}}');
