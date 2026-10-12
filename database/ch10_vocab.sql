-- ── Latina Exercitia — Chapter 10 Vocabulary ─────────────────────────────
-- Wheelock's Latin, 7th edition, Capvt X: fourth conjugation and -io verbs
-- of the third.
-- Last updated: 2026-10-12 (quoniam: added "in as much as"; fugio: four sense groups)
--
-- Appears in the Vocabulary tab as "Vocabulary 10". Chapter is numeric, so no
-- index.html change is needed.
--
-- 9 nouns, 1 adjective, 1 conjunction, 1 preposition, 8 verbs.
-- Semicolons in the textbook gloss become separate sense groups.
-- "a|b" inside one meaning = alternative spellings of the SAME answer (one box,
-- either accepted), e.g. quoniam: "inasmuch as|in as much as".
--
-- Reversible: delete from drills where session_tag = 'wheelock_ch10_vocab';

insert into drills (type, lp_multiplier, session_tag, content) values
  -- ── nouns ──
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "noun", "pos": "f", "lemma": "amicitia", "forms": ["amicitia", "amicitiae"], "gender": "f", "meanings": [{"items": ["friendship"]}], "derivatives": ["amicable", "amity"], "cf": ["amo", "amica", "amicus"]}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "noun", "pos": "f", "lemma": "cupiditas", "forms": ["cupiditas", "cupiditatis"], "gender": "f", "meanings": [{"items": ["desire", "longing", "passion"]}, {"items": ["cupidity", "avarice"]}], "derivatives": ["Cupid"]}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "noun", "pos": "f", "lemma": "hora", "forms": ["hora", "horae"], "gender": "f", "meanings": [{"items": ["hour", "time"]}], "derivatives": ["horoscope"], "note": "horoscope comes from Latin via French, but ultimately from Greek."}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "noun", "pos": "f", "lemma": "natura", "forms": ["natura", "naturae"], "gender": "f", "meanings": [{"items": ["nature"]}], "derivatives": ["natural", "preternatural", "supernatural"]}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "noun", "pos": "f", "lemma": "senectus", "forms": ["senectus", "senectutis"], "gender": "f", "meanings": [{"items": ["old age"]}], "derivatives": ["senescent", "senility"]}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "noun", "pos": "m", "lemma": "timor", "forms": ["timor", "timoris"], "gender": "m", "meanings": [{"items": ["fear"]}], "derivatives": ["timorous", "timid"]}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "noun", "pos": "f", "lemma": "veritas", "forms": ["veritas", "veritatis"], "gender": "f", "meanings": [{"items": ["truth"]}], "derivatives": ["verify", "veritable", "verity"]}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "noun", "pos": "f", "lemma": "via", "forms": ["via", "viae"], "gender": "f", "meanings": [{"items": ["way", "road", "street"]}], "derivatives": ["via", "viaduct", "deviate", "devious", "obvious", "pervious", "impervious", "previous", "trivial", "voyage", "envoy"], "note": "Do not confuse via (way) with vita (life)."}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "noun", "pos": "f", "lemma": "voluptas", "forms": ["voluptas", "voluptatis"], "gender": "f", "meanings": [{"items": ["pleasure"]}], "derivatives": ["voluptuary", "voluptuous", "voluptuosity"]}'),

  -- ── adjective, conjunction, preposition ──
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "other", "pos": "adj", "lemma": "beatus", "forms": ["beatus", "beata", "beatum"], "gender": "adj", "meanings": [{"items": ["happy", "fortunate", "blessed"]}], "derivatives": ["beatific", "beatify", "beatitude", "Beatrice"], "type_label": "adj."}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "other", "pos": "conj", "lemma": "quoniam", "forms": ["quoniam"], "gender": "conj", "meanings": [{"items": ["since", "inasmuch as|in as much as"]}], "derivatives": [], "type_label": "conj."}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "other", "pos": "prep", "lemma": "cum", "forms": ["cum"], "gender": "prep", "meanings": [{"items": ["with"]}], "derivatives": ["complete", "connect", "corroborate", "collaborate"], "note": "As a prefix cum may appear as com-, con-, cor-, col- or co-, meaning with, together, completely, or simply intensive.", "type_label": "prep. + abl."}'),

  -- ── verbs ──
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "other", "pos": "verb", "lemma": "audio", "forms": ["audio", "audire", "audivi", "auditum"], "gender": "verb", "meanings": [{"items": ["to hear", "to listen to"]}], "derivatives": ["audible", "audience", "audit", "audition", "auditory", "obey"], "note": "obey comes through French obeir from Latin oboedire = ob + audire.", "type_label": "4th conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "other", "pos": "verb", "lemma": "capio", "forms": ["capio", "capere", "cepi", "captum"], "gender": "verb", "meanings": [{"items": ["to take", "to capture", "to seize", "to get"]}], "derivatives": ["capable", "capacious", "capsule", "captious", "captive", "captor"], "note": "In compounds the -a- becomes -i-: accipio, excipio, incipio, recipio.", "type_label": "3rd conjugation (-io)"}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "other", "pos": "verb", "lemma": "dico", "forms": ["dico", "dicere", "dixi", "dictum"], "gender": "verb", "meanings": [{"items": ["to say", "to tell", "to speak"]}, {"items": ["to name", "to call"]}], "derivatives": ["dictate", "dictum", "diction", "dictionary", "dight", "ditto", "contradict", "indict", "edict", "verdict"], "note": "Irregular imperative dic. Do not confuse dico with duco.", "type_label": "3rd conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "other", "pos": "verb", "lemma": "facio", "forms": ["facio", "facere", "feci", "factum"], "gender": "verb", "meanings": [{"items": ["to make", "to do", "to accomplish"]}], "derivatives": ["facile", "fact", "faction", "factotum", "facsimile", "faculty", "fashion", "feasible", "feat"], "cf": ["officium"], "note": "Irregular imperative fac. In compounds the -a- becomes -i-: conficio, perficio.", "type_label": "3rd conjugation (-io)"}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "other", "pos": "verb", "lemma": "fugio", "forms": ["fugio", "fugere", "fugi", "fugiturum"], "gender": "verb", "meanings": [{"items": ["to flee", "to hurry away"]}, {"items": ["to escape"]}, {"items": ["to go into exile"]}, {"items": ["to avoid", "to shun"]}], "derivatives": ["fugitive", "fugue", "centrifugal", "refuge", "subterfuge"], "note": "The fourth principal part is the future active participle fugiturum.", "type_label": "3rd conjugation (-io)"}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "other", "pos": "verb", "lemma": "venio", "forms": ["venio", "venire", "veni", "ventum"], "gender": "verb", "meanings": [{"items": ["to come"]}], "derivatives": ["advent", "adventure", "avenue", "convene", "contravene", "covenant", "event", "inconvenient", "intervene", "parvenu", "prevent", "provenience", "venue"], "type_label": "4th conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "other", "pos": "verb", "lemma": "invenio", "forms": ["invenio", "invenire", "inveni", "inventum"], "gender": "verb", "meanings": [{"items": ["to come upon", "to find"]}], "derivatives": ["invent", "inventor", "inventive", "inventory"], "type_label": "4th conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch10_vocab',
   '{"chapter": 10, "group": "other", "pos": "verb", "lemma": "vivo", "forms": ["vivo", "vivere", "vixi", "victum"], "gender": "verb", "meanings": [{"items": ["to live"]}], "derivatives": ["convivial", "revive", "survive", "vivacity", "vivid", "vivify", "viviparous", "vivisection", "victual", "vittle"], "cf": ["vita"], "type_label": "3rd conjugation"}');
