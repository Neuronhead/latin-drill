-- ── Latina Exercitia — Chapter 7 Vocabulary ──
-- Run in Supabase SQL Editor after ch7_content.sql
-- Last updated: 2026-09-12
--
-- New drill type 'vocab'. Content shape:
--   chapter, group ('noun' | 'other'), pos, lemma, forms[],
--   gender  — the Gender/Type answer: m | f | n | adj | prep | verb
--   meanings[] — one entry per SENSE GROUP (Wheelock's semicolons);
--                each { items:[accepted synonyms], note? } = ONE answer cell
--   derivatives[], cf[]?, note?, type_label?
--
-- 'group' drives the two-table layout: nouns above, other parts of speech below.
-- 'chapter' drives the chapter picker — adding ch.8 later is an insert, no code change.
--
-- Reversible: delete from drills where session_tag = 'wheelock_ch7_vocab';

insert into drills (type, lp_multiplier, session_tag, content) values
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "m", "lemma": "amor", "forms": ["amor", "amoris"], "gender": "m", "meanings": [{"items": ["love"]}], "derivatives": ["amorous", "enamored"], "cf": ["amo", "amicus"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "n", "lemma": "carmen", "forms": ["carmen", "carminis"], "gender": "n", "meanings": [{"items": ["song", "poem"]}], "derivatives": ["charm"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "f", "lemma": "civitas", "forms": ["civitas", "civitatis"], "gender": "f", "meanings": [{"items": ["state", "citizenship"]}], "derivatives": ["city"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "n", "lemma": "corpus", "forms": ["corpus", "corporis"], "gender": "n", "meanings": [{"items": ["body"]}], "derivatives": ["corps", "corpse", "corpuscle", "corpulent", "corporal", "corporeal", "corporate", "corporation", "incorporate", "corsage", "corset"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "m", "lemma": "homo", "forms": ["homo", "hominis"], "gender": "m", "meanings": [{"items": ["human being", "man"]}], "derivatives": ["homicide", "homage"], "cf": ["humanus", "vir"], "note": "Also homo sapiens — but not the prefix homo-."}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "m", "lemma": "labor", "forms": ["labor", "laboris"], "gender": "m", "meanings": [{"items": ["labor", "work", "toil"]}, {"items": ["a work", "production"]}], "derivatives": ["laboratory", "belabor", "laborious", "collaborate", "elaborate"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "f", "lemma": "littera", "forms": ["littera", "litterae"], "gender": "f", "meanings": [{"items": ["a letter of the alphabet"]}, {"items": ["a letter", "epistle", "literature"], "note": "pl. litterae, litterarum"}], "derivatives": ["literal", "letters", "belles-lettres", "illiterate", "alliteration"], "note": "Special idiomatic meaning in the plural."}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "m", "lemma": "mos", "forms": ["mos", "moris"], "gender": "m", "meanings": [{"items": ["habit", "custom", "manner"]}, {"items": ["habits", "morals", "character"], "note": "pl. mores, morum"}], "derivatives": ["mores", "moral", "immoral", "immorality", "morale", "morose"], "note": "Special idiomatic meaning in the plural."}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "n", "lemma": "nomen", "forms": ["nomen", "nominis"], "gender": "n", "meanings": [{"items": ["name"]}], "derivatives": ["nomenclature", "nominate", "nominative", "nominal", "noun", "pronoun", "renown", "denomination", "ignominy", "misnomer"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "f", "lemma": "pax", "forms": ["pax", "pacis"], "gender": "f", "meanings": [{"items": ["peace"]}], "derivatives": ["pacify", "pacific", "pacifist", "appease", "pay"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "f", "lemma": "regina", "forms": ["regina", "reginae"], "gender": "f", "meanings": [{"items": ["queen"]}], "derivatives": ["Regina", "regina", "reginal"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "m", "lemma": "rex", "forms": ["rex", "regis"], "gender": "m", "meanings": [{"items": ["king"]}], "derivatives": ["regal", "regalia", "regicide", "royal"], "cf": ["rajah"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "n", "lemma": "tempus", "forms": ["tempus", "temporis"], "gender": "n", "meanings": [{"items": ["time"]}, {"items": ["occasion", "opportunity"]}], "derivatives": ["tempo", "temporary", "contemporary", "temporal", "temporize", "extempore", "tense (of a verb)"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "f", "lemma": "terra", "forms": ["terra", "terrae"], "gender": "f", "meanings": [{"items": ["earth", "ground", "land", "country"]}], "derivatives": ["terrestrial", "terrace", "terrier", "territory", "inter (verb)", "parterre", "subterranean", "terra cotta"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "f", "lemma": "uxor", "forms": ["uxor", "uxoris"], "gender": "f", "meanings": [{"items": ["wife"]}], "derivatives": ["uxorial", "uxorious", "uxoricide"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "f", "lemma": "virgo", "forms": ["virgo", "virginis"], "gender": "f", "meanings": [{"items": ["maiden", "virgin"]}], "derivatives": ["virgin", "virginal", "virginity", "Virginia"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "noun", "pos": "f", "lemma": "virtus", "forms": ["virtus", "virtutis"], "gender": "f", "meanings": [{"items": ["manliness", "courage"]}, {"items": ["excellence", "character", "worth", "virtue"]}], "derivatives": ["virtuoso", "virtuosity", "virtual"], "cf": ["vir"]}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "other", "pos": "adj", "lemma": "novus", "forms": ["novus", "nova", "novum"], "gender": "adj", "meanings": [{"items": ["new"]}, {"items": ["strange"]}], "derivatives": ["novel", "novelty", "novice", "innovate"], "type_label": "adj."}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "other", "pos": "prep", "lemma": "post", "forms": ["post"], "gender": "prep", "meanings": [{"items": ["after", "behind"]}], "derivatives": ["posterity", "posterior", "posthumous", "post mortem", "preposterous", "postgraduate", "postlude", "postpositive", "postwar"], "note": "P.M. = post meridiem.", "type_label": "prep. + acc."}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "other", "pos": "prep", "lemma": "sub", "forms": ["sub"], "gender": "prep", "meanings": [{"items": ["under", "up under", "close to"]}, {"items": ["down to", "down into", "to the foot of", "at the foot of"]}], "derivatives": ["subterranean", "suburb", "succeed", "suffix", "suggest", "support", "sustain"], "note": "+ abl. with verbs of rest; + acc. with verbs of motion. By assimilation: suc-, suf-, sug-, sup-, sus-.", "type_label": "prep. + abl. / + acc."}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "other", "pos": "verb", "lemma": "audeo", "forms": ["audeo", "audere", "ausus sum"], "gender": "verb", "meanings": [{"items": ["to dare", "dare"]}], "derivatives": ["audacious", "audacity"], "note": "The third principal part is unusual — semi-deponent (see Capvt XXXIV).", "type_label": "semi-deponent verb"}'),
  ('vocab', 1.0, 'wheelock_ch7_vocab',
   '{"chapter": 7, "group": "other", "pos": "verb", "lemma": "neco", "forms": ["neco", "necare", "necavi", "necatum"], "gender": "verb", "meanings": [{"items": ["to murder", "murder", "to kill", "kill"]}], "derivatives": ["internecine"], "cf": ["nocere"], "type_label": "1st conjugation verb"}');

-- ── Verify ──────────────────────────────────────────────────────
select content->>'group' as tbl, content->>'lemma' as word,
       content->>'gender' as gen,
       jsonb_array_length(content->'meanings') as cells
  from drills where type = 'vocab' and content->>'chapter' = '7'
 order by content->>'group' desc, id;
-- Expect 22 rows: 17 nouns, 5 other.
