-- ── Latina Exercitia — Chapter 9 Vocabulary ──────────────────────────────
-- Wheelock's Latin, 7th edition, Capvt IX: Demonstratives hic, ille, iste;
-- special -ius adjectives (the UNUS NAUTA group).
-- Last updated: 2026-10-05
--
-- Appears in the Vocabulary tab as "Vocabulary 9". Chapter is numeric, so no
-- index.html change is needed.
--
-- 3 nouns, 13 adjectives/demonstratives, 1 adverb, 1 conjunction, 1 preposition.
--
-- Reversible: delete from drills where session_tag = 'wheelock_ch9_vocab';

insert into drills (type, lp_multiplier, session_tag, content) values
  -- ── nouns ──
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "noun", "pos": "m", "lemma": "locus", "forms": ["locus", "loci"], "gender": "m", "meanings": [{"items": ["place"]}, {"items": ["passage in literature"]}], "derivatives": ["allocate", "dislocate", "locality", "locomotion"], "note": "Irregular plural: loca, locorum, n. = places, region; loci, locorum, m. = passages in literature."}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "noun", "pos": "m", "lemma": "morbus", "forms": ["morbus", "morbi"], "gender": "m", "meanings": [{"items": ["disease", "sickness"]}], "derivatives": ["morbid", "morbidity", "morbidness", "morbose"]}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "noun", "pos": "n", "lemma": "studium", "forms": ["studium", "studii"], "gender": "n", "meanings": [{"items": ["eagerness", "zeal", "pursuit", "study"]}], "derivatives": ["studio", "studious"], "cf": ["studere"], "note": "cf. studere, to be eager for, study."}'),

  -- ── demonstratives ──
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "adj", "lemma": "hic", "forms": ["hic", "haec", "hoc"], "gender": "adj", "meanings": [{"items": ["this"]}, {"items": ["the latter"]}], "derivatives": ["ad hoc"], "note": "Demonstrative. At times weakened to he, she, it, they. Gen. sg. huius, dat. sg. huic.", "type_label": "demonstrative"}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "adj", "lemma": "ille", "forms": ["ille", "illa", "illud"], "gender": "adj", "meanings": [{"items": ["that"]}, {"items": ["the former"]}, {"items": ["the famous"]}], "derivatives": [], "note": "Demonstrative. Also weakened to he, she, it, they. Gen. sg. illius, dat. sg. illi.", "type_label": "demonstrative"}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "adj", "lemma": "iste", "forms": ["iste", "ista", "istud"], "gender": "adj", "meanings": [{"items": ["that of yours", "that"]}, {"items": ["such"]}], "derivatives": [], "note": "Demonstrative, declined like ille. Sometimes contemptuous: that despicable, that wretched.", "type_label": "demonstrative"}'),

  -- ── special -ius adjectives (UNUS NAUTA) ──
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "adj", "lemma": "unus", "forms": ["unus", "una", "unum"], "gender": "adj", "meanings": [{"items": ["one", "single", "alone"]}], "derivatives": ["unit", "unite", "union", "onion", "unanimous", "unicorn", "uniform", "unique", "unison", "universal", "university"], "note": "UNUS NAUTA group: gen. sg. unius, dat. sg. uni.", "type_label": "adj. (-ius gen.)"}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "adj", "lemma": "nullus", "forms": ["nullus", "nulla", "nullum"], "gender": "adj", "meanings": [{"items": ["not any", "no", "none"]}], "derivatives": ["null", "nullify", "nullification", "annul"], "note": "UNUS NAUTA group: gen. sg. nullius, dat. sg. nulli.", "type_label": "adj. (-ius gen.)"}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "adj", "lemma": "ullus", "forms": ["ullus", "ulla", "ullum"], "gender": "adj", "meanings": [{"items": ["any"]}], "derivatives": [], "note": "UNUS NAUTA group: gen. sg. ullius, dat. sg. ulli.", "type_label": "adj. (-ius gen.)"}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "adj", "lemma": "solus", "forms": ["solus", "sola", "solum"], "gender": "adj", "meanings": [{"items": ["alone", "only"]}], "derivatives": ["sole", "solitary", "soliloquy", "solo", "desolate", "sullen"], "note": "UNUS NAUTA group; also the only. non solum... sed etiam = not only... but also.", "type_label": "adj. (-ius gen.)"}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "adj", "lemma": "neuter", "forms": ["neuter", "neutra", "neutrum"], "gender": "adj", "meanings": [{"items": ["not either", "neither"]}], "derivatives": ["neutrality", "neutralize", "neutron"], "note": "UNUS NAUTA group: gen. sg. neutrius, dat. sg. neutri.", "type_label": "adj. (-ius gen.)"}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "adj", "lemma": "alius", "forms": ["alius", "alia", "aliud"], "gender": "adj", "meanings": [{"items": ["other", "another"]}], "derivatives": ["alias", "alibi", "alien"], "note": "UNUS NAUTA group. alii... alii = some... others. Genitive sg. is usually alterius, borrowed from alter.", "type_label": "adj. (-ius gen.)"}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "adj", "lemma": "uter", "forms": ["uter", "utra", "utrum"], "gender": "adj", "meanings": [{"items": ["either", "which"]}], "derivatives": [], "note": "UNUS NAUTA group. Of two. Gen. sg. utrius, dat. sg. utri.", "type_label": "adj. (-ius gen.)"}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "adj", "lemma": "totus", "forms": ["totus", "tota", "totum"], "gender": "adj", "meanings": [{"items": ["whole", "entire"]}], "derivatives": ["total", "totality", "factotum", "in toto"], "note": "UNUS NAUTA group: gen. sg. totius, dat. sg. toti.", "type_label": "adj. (-ius gen.)"}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "adj", "lemma": "alter", "forms": ["alter", "altera", "alterum"], "gender": "adj", "meanings": [{"items": ["the other"]}, {"items": ["second"]}], "derivatives": ["alter", "alteration", "alternate", "alternative", "altercation", "altruism", "adulterate", "adultery"], "note": "UNUS NAUTA group. The other of two. Gen. sg. alterius, dat. sg. alteri.", "type_label": "adj. (-ius gen.)"}'),

  -- ── adverb, conjunction, preposition ──
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "adv", "lemma": "nimis", "forms": ["nimis"], "gender": "adv", "meanings": [{"items": ["too", "too much", "excessively"]}, {"items": ["exceedingly", "very"], "note": "positive sense, esp. with adjectives and adverbs"}], "derivatives": ["nimiety"], "note": "Also nimium.", "type_label": "adv."}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "conj", "lemma": "enim", "forms": ["enim"], "gender": "conj", "meanings": [{"items": ["for", "in fact", "truly"]}], "derivatives": [], "note": "Postpositive: never stands first in its clause.", "type_label": "conj."}'),
  ('vocab', 1.0, 'wheelock_ch9_vocab',
   '{"chapter": 9, "group": "other", "pos": "prep", "lemma": "in", "forms": ["in"], "gender": "prep", "meanings": [{"items": ["into", "toward"]}, {"items": ["against"]}], "derivatives": ["intend", "invade", "impugn"], "note": "+ acc. here; with the ablative in means in, on (Capvt III). As a prefix also il-, ir-, im-; contrast the negative prefix in- (not, un-).", "type_label": "prep. + acc."}');
