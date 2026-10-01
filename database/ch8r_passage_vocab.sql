-- ── Latina Exercitia — Chapter 8 Reading Passage Vocabulary (Trojan Horse) ──
-- Glosses for the Trojan Horse / Laocoon reading, kept apart from Wheelock's
-- Chapter 8 vocabulary list so each can be drilled on its own.
-- Appears in the chapter selector as "Vocabulary 8R".
-- Last updated: 2026-09-29
--
-- duos and mari are passage forms, not headwords: they are entered under their
-- lemmas (duo, mare) with the passage form in the note.
--
-- Reversible: delete from drills where session_tag = 'wheelock_ch8r_vocab';

insert into drills (type, lp_multiplier, session_tag, content) values
  -- ── nouns ──
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "noun", "pos": "m", "lemma": "equus", "forms": ["equus", "equi"], "gender": "m", "meanings": [{"items": ["horse"]}], "derivatives": ["equine", "equestrian", "equitation"], "note": "Not related to aequus (equal), which gives equity and equation."}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "noun", "pos": "f", "lemma": "hasta", "forms": ["hasta", "hastae"], "gender": "f", "meanings": [{"items": ["spear"]}], "derivatives": [], "note": "Ablative hasta = with a spear."}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "noun", "pos": "m", "lemma": "Laocoon", "forms": ["Laocoon", "Laocoontis"], "gender": "m", "meanings": [{"items": ["Laocoon"]}], "derivatives": [], "note": "Priest of Neptune at Troy."}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "noun", "pos": "n", "lemma": "mare", "forms": ["mare", "maris"], "gender": "n", "meanings": [{"items": ["sea"]}], "derivatives": ["marine", "maritime", "submarine", "mariner", "marina"], "note": "The passage form mari is ablative."}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "noun", "pos": "f", "lemma": "Minerva", "forms": ["Minerva", "Minervae"], "gender": "f", "meanings": [{"items": ["Minerva"]}], "derivatives": [], "note": "Roman goddess, corresponding to the Greek goddess Athena."}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "noun", "pos": "f", "lemma": "nox", "forms": ["nox", "noctis"], "gender": "f", "meanings": [{"items": ["night"]}], "derivatives": ["nocturnal", "nocturne", "equinox", "noctambulist"], "note": "Ablative nocte = at night."}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "noun", "pos": "m", "lemma": "sacerdos", "forms": ["sacerdos", "sacerdotis"], "gender": "m", "meanings": [{"items": ["priest"]}], "derivatives": ["sacerdotal"], "cf": ["sacer"]}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "noun", "pos": "m", "lemma": "serpens", "forms": ["serpens", "serpentis"], "gender": "m", "meanings": [{"items": ["snake", "sea-serpent"]}], "derivatives": ["serpent", "serpentine"]}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "noun", "pos": "n", "lemma": "templum", "forms": ["templum", "templi"], "gender": "n", "meanings": [{"items": ["temple"]}], "derivatives": ["temple", "templar", "contemplate"]}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "noun", "pos": "f", "lemma": "Troia", "forms": ["Troia", "Troiae"], "gender": "f", "meanings": [{"items": ["Troy"]}], "derivatives": [], "note": "An ancient city in Asia Minor."}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "noun", "pos": "m", "lemma": "Troiani", "forms": ["Troiani", "Troianorum"], "gender": "m", "meanings": [{"items": ["Trojans"]}], "derivatives": ["Trojan"], "note": "Masculine plural: the inhabitants of Troy."}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "noun", "pos": "f", "lemma": "urbs", "forms": ["urbs", "urbis"], "gender": "f", "meanings": [{"items": ["city"]}], "derivatives": ["urban", "urbane", "suburb", "suburban", "urbanize"]}'),

  -- ── verbs ──
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "verb", "lemma": "credo", "forms": ["credo", "credere", "credidi", "creditus"], "gender": "verb", "meanings": [{"items": ["to trust"]}], "derivatives": ["credible", "credit", "creed", "credulous", "incredible", "credential", "credo"], "note": "Takes a dative object.", "type_label": "3rd conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "verb", "lemma": "dedico", "forms": ["dedico", "dedicare", "dedicavi", "dedicatus"], "gender": "verb", "meanings": [{"items": ["to dedicate"]}], "derivatives": ["dedicate", "dedication", "dedicatory"], "type_label": "1st conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "verb", "lemma": "dico", "forms": ["dico", "dicere", "dixi", "dictus"], "gender": "verb", "meanings": [{"items": ["to say"]}], "derivatives": ["dictate", "diction", "dictionary", "edict", "predict", "verdict", "contradict", "dictum"], "type_label": "3rd conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "verb", "lemma": "invenio", "forms": ["invenio", "invenire", "inveni", "inventus"], "gender": "verb", "meanings": [{"items": ["to find", "to discover"]}], "derivatives": ["invent", "invention", "inventor", "inventory", "inventive"], "type_label": "4th conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "verb", "lemma": "mitto", "forms": ["mitto", "mittere", "misi", "missus"], "gender": "verb", "meanings": [{"items": ["to send"]}], "derivatives": ["mission", "missile", "message", "admit", "commit", "permit", "transmit", "dismiss"], "type_label": "3rd conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "verb", "lemma": "relinquo", "forms": ["relinquo", "relinquere", "reliqui", "relictus"], "gender": "verb", "meanings": [{"items": ["to leave behind"]}], "derivatives": ["relinquish", "relic", "relict", "derelict", "dereliction"], "type_label": "3rd conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "verb", "lemma": "strangulo", "forms": ["strangulo", "strangulare", "strangulavi", "strangulatus"], "gender": "verb", "meanings": [{"items": ["to strangle", "to choke"]}], "derivatives": ["strangle", "strangulation", "strangulate"], "type_label": "1st conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "verb", "lemma": "timeo", "forms": ["timeo", "timere", "timui"], "gender": "verb", "meanings": [{"items": ["to fear", "to be afraid of"]}], "derivatives": ["timid", "timorous", "intimidate", "timidity"], "note": "No fourth principal part.", "type_label": "2nd conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "verb", "lemma": "tundo", "forms": ["tundo", "tundere", "tutudi", "tunsus"], "gender": "verb", "meanings": [{"items": ["to hit", "to strike"]}], "derivatives": ["contusion", "obtuse"], "type_label": "3rd conjugation"}'),

  -- ── adjectives ──
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "adj", "lemma": "duo", "forms": ["duo", "duae", "duo"], "gender": "adj", "meanings": [{"items": ["two"]}], "derivatives": ["dual", "duet", "duo", "duplex", "duplicate", "double", "dozen"], "note": "Numeral. The passage form duos is masculine plural accusative.", "type_label": "numeral"}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "adj", "lemma": "falsus", "forms": ["falsus", "falsa", "falsum"], "gender": "adj", "meanings": [{"items": ["false", "deceitful"]}], "derivatives": ["false", "falsify", "falsehood", "falsetto", "fault"], "type_label": "adj."}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "adj", "lemma": "ligneus", "forms": ["ligneus", "lignea", "ligneum"], "gender": "adj", "meanings": [{"items": ["of wood", "wooden"]}], "derivatives": ["ligneous", "lignite", "lignin"], "type_label": "adj."}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "adj", "lemma": "miser", "forms": ["miser", "misera", "miserum"], "gender": "adj", "meanings": [{"items": ["unfortunate", "wretched"]}], "derivatives": ["miser", "miserable", "misery", "commiserate", "miserly"], "type_label": "adj."}'),

  -- ── prepositions and conjunctions ──
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "prep", "lemma": "cum", "forms": ["cum"], "gender": "prep", "meanings": [{"items": ["with"]}], "derivatives": ["combine", "connect", "cooperate", "collect", "magna cum laude"], "note": "As a prefix it appears as com-, con-, co-, col- or cor-.", "type_label": "prep. + abl."}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "prep", "lemma": "in", "forms": ["in"], "gender": "prep", "meanings": [{"items": ["into"]}], "derivatives": ["invade", "inject", "import", "influx"], "note": "With the accusative in this passage. With the ablative it means in or on.", "type_label": "prep. + acc."}'),
  ('vocab', 1.0, 'wheelock_ch8r_vocab',
   '{"chapter": "8R", "group": "other", "pos": "conj", "lemma": "nam", "forms": ["nam"], "gender": "conj", "meanings": [{"items": ["for"]}], "derivatives": [], "type_label": "conj."}');
