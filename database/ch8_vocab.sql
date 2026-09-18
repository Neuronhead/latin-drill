-- ── Latina Exercitia — Chapter 8 Vocabulary ──
-- Run in Supabase SQL Editor after ch7_vocab.sql
-- Last updated: 2026-09-18
--
-- Same 'vocab' drill type and content shape as chapter 7.
-- NOTE: chapter 8 introduces two NEW Gender/Type values — 'conj' and 'adv'.
--       index.html must accept these before this content grades correctly.
--
-- Reversible: delete from drills where session_tag = 'wheelock_ch8_vocab';

insert into drills (type, lp_multiplier, session_tag, content) values
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "noun", "pos": "m", "lemma": "Cicero", "forms": ["Cicero", "Ciceronis"], "gender": "m", "meanings": [{"items": ["Cicero", "Marcus Tullius Cicero"]}], "derivatives": ["Ciceronian", "cicerone"]}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "noun", "pos": "f", "lemma": "copia", "forms": ["copia", "copiae"], "gender": "f", "meanings": [{"items": ["abundance", "supply"]}, {"items": ["supplies", "troops", "forces"], "note": "pl. copiae, copiarum"}], "derivatives": ["copious", "copy", "cornucopia"]}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "noun", "pos": "m", "lemma": "frater", "forms": ["frater", "fratris"], "gender": "m", "meanings": [{"items": ["brother"]}], "derivatives": ["fraternal", "fraternity", "fraternize", "fratricide"]}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "noun", "pos": "f", "lemma": "laus", "forms": ["laus", "laudis"], "gender": "f", "meanings": [{"items": ["praise", "glory", "fame"]}], "derivatives": ["laud", "laudable", "laudation", "laudatory", "magna cum laude"], "cf": ["laudo"]}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "noun", "pos": "f", "lemma": "libertas", "forms": ["libertas", "libertatis"], "gender": "f", "meanings": [{"items": ["liberty", "freedom"]}], "derivatives": ["liberty", "liberate"], "cf": ["liber"]}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "noun", "pos": "f", "lemma": "ratio", "forms": ["ratio", "rationis"], "gender": "f", "meanings": [{"items": ["reckoning", "account"]}, {"items": ["reason", "judgment", "consideration"]}, {"items": ["system"]}, {"items": ["manner", "method"]}], "derivatives": ["ratio", "ration", "rational", "irrational", "ratiocination"]}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "noun", "pos": "m", "lemma": "scriptor", "forms": ["scriptor", "scriptoris"], "gender": "m", "meanings": [{"items": ["writer", "author"]}], "derivatives": ["scriptorium"], "cf": ["scribo"]}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "noun", "pos": "f", "lemma": "soror", "forms": ["soror", "sororis"], "gender": "f", "meanings": [{"items": ["sister"]}], "derivatives": ["sororal", "sororicide", "sorority"]}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "noun", "pos": "f", "lemma": "victoria", "forms": ["victoria", "victoriae"], "gender": "f", "meanings": [{"items": ["victory"]}], "derivatives": ["victorious", "Victoria"], "cf": ["vinco"]}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "conj", "lemma": "dum", "forms": ["dum"], "gender": "conj", "meanings": [{"items": ["while", "as long as", "at the same time that"]}, {"items": ["until"], "note": "+ subjunctive"}], "derivatives": [], "type_label": "conj."}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "prep", "lemma": "ad", "forms": ["ad"], "gender": "prep", "meanings": [{"items": ["to", "up to", "near to"]}], "derivatives": ["administer", "ad hoc", "ad hominem"], "note": "\"Place to which\" with verbs of motion — contrast the dative of indirect object, also translated \"to\". In compounds the d often assimilates: ac-, ap-, a-.", "type_label": "prep. + acc."}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "prep", "lemma": "ex", "forms": ["ex", "e"], "gender": "prep", "meanings": [{"items": ["out of", "from", "from within"]}, {"items": ["by reason of", "on account of"]}, {"items": ["of"], "note": "after cardinal numbers"}], "derivatives": ["exact", "except", "exhibit", "evict"], "note": "ex before consonants or vowels; e before consonants only. Often a prefix, with x assimilated: excipio, educo, eventus, efficio.", "type_label": "prep. + abl."}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "adv", "lemma": "numquam", "forms": ["numquam"], "gender": "adv", "meanings": [{"items": ["never"]}], "derivatives": [], "type_label": "adv."}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "adv", "lemma": "tamen", "forms": ["tamen"], "gender": "adv", "meanings": [{"items": ["nevertheless", "still"]}], "derivatives": [], "type_label": "adv."}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "verb", "lemma": "ago", "forms": ["ago", "agere", "egi", "actum"], "gender": "verb", "meanings": [{"items": ["to drive", "to lead", "to do", "to act"]}, {"items": ["to pass", "to spend"], "note": "of life or time"}], "derivatives": ["agent", "agenda", "agile", "agitate", "active", "actor", "action", "actual", "actuate"], "note": "gratias agere + dat. = to thank (someone), literally to give thanks to.", "type_label": "3rd conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "verb", "lemma": "demonstro", "forms": ["demonstro", "demonstrare", "demonstravi", "demonstratum"], "gender": "verb", "meanings": [{"items": ["to point out", "to show", "to demonstrate"]}], "derivatives": ["demonstrable", "demonstration", "demonstrative"], "type_label": "1st conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "verb", "lemma": "disco", "forms": ["disco", "discere", "didici"], "gender": "verb", "meanings": [{"items": ["to learn"]}], "derivatives": ["disciple", "disciplinary"], "cf": ["discipulus", "discipula"], "note": "Only three principal parts — no fourth.", "type_label": "3rd conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "verb", "lemma": "doceo", "forms": ["doceo", "docere", "docui", "doctum"], "gender": "verb", "meanings": [{"items": ["to teach"]}], "derivatives": ["docent", "docile", "document", "doctor", "doctrine", "indoctrinate"], "note": "Long accented stem vowel (-ere) marks the 2nd conjugation — contrast ducere.", "type_label": "2nd conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "verb", "lemma": "duco", "forms": ["duco", "ducere", "duxi", "ductum"], "gender": "verb", "meanings": [{"items": ["to lead"]}, {"items": ["to consider", "to regard"]}, {"items": ["to prolong"]}], "derivatives": ["ductile", "abduct", "adduce", "deduce", "educe", "induce", "produce", "reduce", "seduce"], "note": "Irregular singular imperative: duc (not duce). Compare dic, fac, fer.", "type_label": "3rd conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "verb", "lemma": "gero", "forms": ["gero", "gerere", "gessi", "gestum"], "gender": "verb", "meanings": [{"items": ["to carry"]}, {"items": ["to carry on", "to manage", "to conduct", "to wage", "to accomplish", "to perform"]}], "derivatives": ["gerund", "gesture", "gesticulate", "jest", "belligerent", "congeries", "digest", "suggest", "exaggerate", "register", "registry"], "type_label": "3rd conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "verb", "lemma": "scribo", "forms": ["scribo", "scribere", "scripsi", "scriptum"], "gender": "verb", "meanings": [{"items": ["to write", "to compose"]}], "derivatives": ["ascribe", "circumscribe", "conscript", "describe", "inscribe", "proscribe", "postscript", "rescript", "scripture", "subscribe", "transcribe", "scribble", "scrivener"], "type_label": "3rd conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "verb", "lemma": "traho", "forms": ["traho", "trahere", "traxi", "tractum"], "gender": "verb", "meanings": [{"items": ["to draw", "to drag"]}, {"items": ["to derive", "to acquire"]}], "derivatives": ["attract", "contract", "retract", "subtract", "tractor"], "type_label": "3rd conjugation"}'),
  ('vocab', 1.0, 'wheelock_ch8_vocab',
   '{"chapter": 8, "group": "other", "pos": "verb", "lemma": "vinco", "forms": ["vinco", "vincere", "vici", "victum"], "gender": "verb", "meanings": [{"items": ["to conquer", "to overcome"]}], "derivatives": ["convince", "convict", "evince", "evict", "invincible", "Vincent", "victor", "Victoria", "vanquish"], "type_label": "3rd conjugation"}');

-- ── Verify ──────────────────────────────────
select content->>'group' as tbl, content->>'lemma' as word,
       content->>'gender' as type,
       jsonb_array_length(content->'meanings') as groups
  from drills where type = 'vocab' and content->>'chapter' = '8'
 order by content->>'group' desc, id;
-- Expect 23 rows: 9 nouns, 14 other.
