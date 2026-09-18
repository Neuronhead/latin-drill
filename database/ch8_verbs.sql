-- ── Latina Exercitia — Chapter 8 Verbs: Third Conjugation Present System ──
-- Run in Supabase SQL Editor after ch8_vocab.sql
-- Last updated: 2026-09-18
--
-- Adds to the EXISTING 'conjugation' drill type / Verb Conjugations tab.
-- conjugation_class drives the selector grouping, so '3rd conjugation'
-- appears as its own labelled group with no code change.
--
-- Third conjugation present system:
--   present    stem + o / is / it / imus / itis / unt
--   future     stem + am / es / et / emus / etis / ent   (no -bi- tense sign)
--   imperfect  stem + ebam ... ebant   (stem vowel lengthened to -e-)
--   imperative stem + e / ite           (ducere is irregular: duc, not duce)
--
-- Also adds demonstrare (1st) and docere (2nd) from the same chapter.
-- docere/ducere and docet/ducet are the contrast pair Wheelock warns about.
--
-- Reversible: delete from drills where session_tag = 'wheelock_ch8_verbs';

insert into drills (type, lp_multiplier, session_tag, content) values
  ('conjugation', 1.2, 'wheelock_ch8_verbs',
   '{"display": "agere", "meaning": "to drive, lead, do, act", "conjugation_class": "3rd conjugation", "forms": {"present": ["ago", "agis", "agit", "agimus", "agitis", "agunt"], "future": ["agam", "ages", "aget", "agemus", "agetis", "agent"], "imperfect": ["agebam", "agebas", "agebat", "agebamus", "agebatis", "agebant"], "imperative": ["age", "agite"]}}'),
  ('conjugation', 1.2, 'wheelock_ch8_verbs',
   '{"display": "ducere", "meaning": "to lead", "conjugation_class": "3rd conjugation", "forms": {"present": ["duco", "ducis", "ducit", "ducimus", "ducitis", "ducunt"], "future": ["ducam", "duces", "ducet", "ducemus", "ducetis", "ducent"], "imperfect": ["ducebam", "ducebas", "ducebat", "ducebamus", "ducebatis", "ducebant"], "imperative": ["duc", "ducite"]}}'),
  ('conjugation', 1.2, 'wheelock_ch8_verbs',
   '{"display": "discere", "meaning": "to learn", "conjugation_class": "3rd conjugation", "forms": {"present": ["disco", "discis", "discit", "discimus", "discitis", "discunt"], "future": ["discam", "disces", "discet", "discemus", "discetis", "discent"], "imperfect": ["discebam", "discebas", "discebat", "discebamus", "discebatis", "discebant"], "imperative": ["disce", "discite"]}}'),
  ('conjugation', 1.2, 'wheelock_ch8_verbs',
   '{"display": "gerere", "meaning": "to carry on, manage, wage", "conjugation_class": "3rd conjugation", "forms": {"present": ["gero", "geris", "gerit", "gerimus", "geritis", "gerunt"], "future": ["geram", "geres", "geret", "geremus", "geretis", "gerent"], "imperfect": ["gerebam", "gerebas", "gerebat", "gerebamus", "gerebatis", "gerebant"], "imperative": ["gere", "gerite"]}}'),
  ('conjugation', 1.2, 'wheelock_ch8_verbs',
   '{"display": "scribere", "meaning": "to write", "conjugation_class": "3rd conjugation", "forms": {"present": ["scribo", "scribis", "scribit", "scribimus", "scribitis", "scribunt"], "future": ["scribam", "scribes", "scribet", "scribemus", "scribetis", "scribent"], "imperfect": ["scribebam", "scribebas", "scribebat", "scribebamus", "scribebatis", "scribebant"], "imperative": ["scribe", "scribite"]}}'),
  ('conjugation', 1.2, 'wheelock_ch8_verbs',
   '{"display": "trahere", "meaning": "to draw, drag", "conjugation_class": "3rd conjugation", "forms": {"present": ["traho", "trahis", "trahit", "trahimus", "trahitis", "trahunt"], "future": ["traham", "trahes", "trahet", "trahemus", "trahetis", "trahent"], "imperfect": ["trahebam", "trahebas", "trahebat", "trahebamus", "trahebatis", "trahebant"], "imperative": ["trahe", "trahite"]}}'),
  ('conjugation', 1.2, 'wheelock_ch8_verbs',
   '{"display": "vincere", "meaning": "to conquer, overcome", "conjugation_class": "3rd conjugation", "forms": {"present": ["vinco", "vincis", "vincit", "vincimus", "vincitis", "vincunt"], "future": ["vincam", "vinces", "vincet", "vincemus", "vincetis", "vincent"], "imperfect": ["vincebam", "vincebas", "vincebat", "vincebamus", "vincebatis", "vincebant"], "imperative": ["vince", "vincite"]}}'),
  ('conjugation', 1.2, 'wheelock_ch8_verbs',
   '{"display": "demonstrare", "meaning": "to point out, show", "conjugation_class": "1st conjugation", "forms": {"present": ["demonstro", "demonstras", "demonstrat", "demonstramus", "demonstratis", "demonstrant"], "future": ["demonstrabo", "demonstrabis", "demonstrabit", "demonstrabimus", "demonstrabitis", "demonstrabunt"], "imperfect": ["demonstrabam", "demonstrabas", "demonstrabat", "demonstrabamus", "demonstrabatis", "demonstrabant"], "imperative": ["demonstra", "demonstrate"]}}'),
  ('conjugation', 1.2, 'wheelock_ch8_verbs',
   '{"display": "docere", "meaning": "to teach", "conjugation_class": "2nd conjugation", "forms": {"present": ["doceo", "doces", "docet", "docemus", "docetis", "docent"], "future": ["docebo", "docebis", "docebit", "docebimus", "docebitis", "docebunt"], "imperfect": ["docebam", "docebas", "docebat", "docebamus", "docebatis", "docebant"], "imperative": ["doce", "docete"]}}');

-- ── Verify ──────────────────────────────────
select content->>'display' as verb, content->>'conjugation_class' as class,
       content->'forms'->'imperative'->>0 as imperative_sg
  from drills where session_tag = 'wheelock_ch8_verbs' order by id;
-- Expect 9 rows: 7 third conjugation, 1 first, 1 second. ducere's imperative = duc.
