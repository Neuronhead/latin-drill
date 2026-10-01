-- ── Latina Exercitia — Chapter 10 Verbs: Fourth Conjugation and Third -io ──
-- Run in Supabase SQL Editor.
-- Last updated: 2026-09-29
--
-- Adds to the EXISTING 'conjugation' drill type / Verb Conjugations tab.
-- conjugation_class drives the selector grouping, so the two new groups appear
-- as their own labelled rows with no code change. index.html only needs its
-- panel subtitle changed from "1st–3rd Conjugation" to "1st–4th Conjugation".
--
-- Fourth conjugation (audio, audire, audivi, auditum):
--   present    stem audi- + o / s / t / mus / tis / unt   (3rd pl. audiunt)
--   future     audi- + am / es / et / emus / etis / ent    (no -bi- tense sign)
--   imperfect  audi- + ebam ... ebant                      (-ie- before -ba-)
--   imperative audi, audite                                (as 1st and 2nd conj.)
--
-- Third conjugation -io (capio, capere, cepi, captum):
--   present, future and imperfect follow audio, except short -i- in
--   capis, capimus, capitis; imperative cape, capite (stem vowel e).
--   facio is irregular in the singular imperative: fac, not face.
--
-- Reversible: delete from drills where session_tag = 'wheelock_ch10_verbs';

insert into drills (type, lp_multiplier, session_tag, content) values
  -- ── fourth conjugation ──
  ('conjugation', 1.2, 'wheelock_ch10_verbs',
   '{"display": "audire", "meaning": "to hear, listen to", "conjugation_class": "4th conjugation", "forms": {"present": ["audio", "audis", "audit", "audimus", "auditis", "audiunt"], "future": ["audiam", "audies", "audiet", "audiemus", "audietis", "audient"], "imperfect": ["audiebam", "audiebas", "audiebat", "audiebamus", "audiebatis", "audiebant"], "imperative": ["audi", "audite"]}}'),
  ('conjugation', 1.2, 'wheelock_ch10_verbs',
   '{"display": "venire", "meaning": "to come", "conjugation_class": "4th conjugation", "forms": {"present": ["venio", "venis", "venit", "venimus", "venitis", "veniunt"], "future": ["veniam", "venies", "veniet", "veniemus", "venietis", "venient"], "imperfect": ["veniebam", "veniebas", "veniebat", "veniebamus", "veniebatis", "veniebant"], "imperative": ["veni", "venite"]}}'),
  ('conjugation', 1.2, 'wheelock_ch10_verbs',
   '{"display": "invenire", "meaning": "to come upon, find", "conjugation_class": "4th conjugation", "forms": {"present": ["invenio", "invenis", "invenit", "invenimus", "invenitis", "inveniunt"], "future": ["inveniam", "invenies", "inveniet", "inveniemus", "invenietis", "invenient"], "imperfect": ["inveniebam", "inveniebas", "inveniebat", "inveniebamus", "inveniebatis", "inveniebant"], "imperative": ["inveni", "invenite"]}}'),
  ('conjugation', 1.2, 'wheelock_ch10_verbs',
   '{"display": "sentire", "meaning": "to feel, perceive, think", "conjugation_class": "4th conjugation", "forms": {"present": ["sentio", "sentis", "sentit", "sentimus", "sentitis", "sentiunt"], "future": ["sentiam", "senties", "sentiet", "sentiemus", "sentietis", "sentient"], "imperfect": ["sentiebam", "sentiebas", "sentiebat", "sentiebamus", "sentiebatis", "sentiebant"], "imperative": ["senti", "sentite"]}}'),

  -- ── third conjugation -io ──
  ('conjugation', 1.2, 'wheelock_ch10_verbs',
   '{"display": "capere", "meaning": "to take, capture, seize", "conjugation_class": "3rd conjugation (-io)", "forms": {"present": ["capio", "capis", "capit", "capimus", "capitis", "capiunt"], "future": ["capiam", "capies", "capiet", "capiemus", "capietis", "capient"], "imperfect": ["capiebam", "capiebas", "capiebat", "capiebamus", "capiebatis", "capiebant"], "imperative": ["cape", "capite"]}}'),
  ('conjugation', 1.2, 'wheelock_ch10_verbs',
   '{"display": "facere", "meaning": "to make, do, accomplish", "conjugation_class": "3rd conjugation (-io)", "forms": {"present": ["facio", "facis", "facit", "facimus", "facitis", "faciunt"], "future": ["faciam", "facies", "faciet", "faciemus", "facietis", "facient"], "imperfect": ["faciebam", "faciebas", "faciebat", "faciebamus", "faciebatis", "faciebant"], "imperative": ["fac", "facite"]}}'),
  ('conjugation', 1.2, 'wheelock_ch10_verbs',
   '{"display": "fugere", "meaning": "to flee, escape, avoid", "conjugation_class": "3rd conjugation (-io)", "forms": {"present": ["fugio", "fugis", "fugit", "fugimus", "fugitis", "fugiunt"], "future": ["fugiam", "fugies", "fugiet", "fugiemus", "fugietis", "fugient"], "imperfect": ["fugiebam", "fugiebas", "fugiebat", "fugiebamus", "fugiebatis", "fugiebant"], "imperative": ["fuge", "fugite"]}}');
