-- ── Latina Exercitia — Seed Data ────────────────────────────────
-- Run in Supabase SQL Editor after schema.sql
-- Last updated: 2026-05-23

-- ── Declension drills ───────────────────────────────────────────
insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch1',
  '{"lemma": "magnus", "display": "magnus / magna / magnum", "meaning": "Adj. — great, large", "is_noun": false, "note": null, "paradigm": {"s": {"Nominative": ["magnus", "magna", "magnum"], "Genitive": ["magni", "magnae", "magni"], "Dative": ["magno", "magnae", "magno"], "Accusative": ["magnum", "magnam", "magnum"], "Ablative": ["magno", "magna", "magno"], "Vocative": ["magne", "magna", "magnum"]}, "p": {"Nominative": ["magni", "magnae", "magna"], "Genitive": ["magnorum", "magnarum", "magnorum"], "Dative": ["magnis", "magnis", "magnis"], "Accusative": ["magnos", "magnas", "magna"], "Ablative": ["magnis", "magnis", "magnis"], "Vocative": ["magni", "magnae", "magna"]}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch1',
  '{"lemma": "bonus", "display": "bonus / bona / bonum", "meaning": "Adj. — good", "is_noun": false, "note": null, "paradigm": {"s": {"Nominative": ["bonus", "bona", "bonum"], "Genitive": ["boni", "bonae", "boni"], "Dative": ["bono", "bonae", "bono"], "Accusative": ["bonum", "bonam", "bonum"], "Ablative": ["bono", "bona", "bono"], "Vocative": ["bone", "bona", "bonum"]}, "p": {"Nominative": ["boni", "bonae", "bona"], "Genitive": ["bonorum", "bonarum", "bonorum"], "Dative": ["bonis", "bonis", "bonis"], "Accusative": ["bonos", "bonas", "bona"], "Ablative": ["bonis", "bonis", "bonis"], "Vocative": ["boni", "bonae", "bona"]}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch1',
  '{"lemma": "malus", "display": "malus / mala / malum", "meaning": "Adj. — bad, evil", "is_noun": false, "note": null, "paradigm": {"s": {"Nominative": ["malus", "mala", "malum"], "Genitive": ["mali", "malae", "mali"], "Dative": ["malo", "malae", "malo"], "Accusative": ["malum", "malam", "malum"], "Ablative": ["malo", "mala", "malo"], "Vocative": ["male", "mala", "malum"]}, "p": {"Nominative": ["mali", "malae", "mala"], "Genitive": ["malorum", "malarum", "malorum"], "Dative": ["malis", "malis", "malis"], "Accusative": ["malos", "malas", "mala"], "Ablative": ["malis", "malis", "malis"], "Vocative": ["mali", "malae", "mala"]}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch1',
  '{"lemma": "multus", "display": "multus / multa / multum", "meaning": "Adj. — much, many", "is_noun": false, "note": null, "paradigm": {"s": {"Nominative": ["multus", "multa", "multum"], "Genitive": ["multi", "multae", "multi"], "Dative": ["multo", "multae", "multo"], "Accusative": ["multum", "multam", "multum"], "Ablative": ["multo", "multa", "multo"], "Vocative": ["multe", "multa", "multum"]}, "p": {"Nominative": ["multi", "multae", "multa"], "Genitive": ["multorum", "multarum", "multorum"], "Dative": ["multis", "multis", "multis"], "Accusative": ["multos", "multas", "multa"], "Ablative": ["multis", "multis", "multis"], "Vocative": ["multi", "multae", "multa"]}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch1',
  '{"lemma": "filius", "display": "filius, filii", "meaning": "n. (m) — son; 2nd declension", "is_noun": true, "note": "Exception: -ius nouns contract the vocative singular to -i (not -ie). All other endings are standard.", "paradigm": {"s": {"Nominative": "filius", "Genitive": "filii", "Dative": "filio", "Accusative": "filium", "Ablative": "filio", "Vocative": "fili"}, "p": {"Nominative": "filii", "Genitive": "filiorum", "Dative": "filiis", "Accusative": "filios", "Ablative": "filiis", "Vocative": "filii"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch1',
  '{"lemma": "puer", "display": "puer, pueri", "meaning": "n. (m) — boy; 2nd declension -er (stem keeps -e-)", "is_noun": true, "note": "Exception: -er nouns look irregular in the nominative but follow standard 2nd declension endings. Puer keeps the -e- throughout — check the genitive (pueri) to find the true stem.", "paradigm": {"s": {"Nominative": "puer", "Genitive": "pueri", "Dative": "puero", "Accusative": "puerum", "Ablative": "puero", "Vocative": "puer"}, "p": {"Nominative": "pueri", "Genitive": "puerorum", "Dative": "pueris", "Accusative": "pueros", "Ablative": "pueris", "Vocative": "pueri"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch1',
  '{"lemma": "ager", "display": "ager, agri", "meaning": "n. (m) — field; 2nd declension -er (stem drops -e-)", "is_noun": true, "note": "Exception: like puer, but ager drops the -e- after the nominative — the stem is agr-, not ager-. Always check the genitive to identify the true stem.", "paradigm": {"s": {"Nominative": "ager", "Genitive": "agri", "Dative": "agro", "Accusative": "agrum", "Ablative": "agro", "Vocative": "ager"}, "p": {"Nominative": "agri", "Genitive": "agrorum", "Dative": "agris", "Accusative": "agros", "Ablative": "agris", "Vocative": "agri"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch1',
  '{"lemma": "poeta", "display": "poeta, poetae", "meaning": "n. (m) — poet; 1st declension", "is_noun": true, "note": "Exception: poeta follows 1st declension endings (like puella) but is grammatically masculine. Its adjectives must take masculine forms — e.g. poeta magnus, not poeta magna.", "paradigm": {"s": {"Nominative": "poeta", "Genitive": "poetae", "Dative": "poetae", "Accusative": "poetam", "Ablative": "poeta", "Vocative": "poeta"}, "p": {"Nominative": "poetae", "Genitive": "poetarum", "Dative": "poetis", "Accusative": "poetas", "Ablative": "poetis", "Vocative": "poetae"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch1',
  '{"lemma": "nauta", "display": "nauta, nautae", "meaning": "n. (m) — sailor; 1st declension", "is_noun": true, "note": "Exception: nauta follows 1st declension endings but is grammatically masculine — adjectives agree in masculine forms. Same pattern as poeta and agricola.", "paradigm": {"s": {"Nominative": "nauta", "Genitive": "nautae", "Dative": "nautae", "Accusative": "nautam", "Ablative": "nauta", "Vocative": "nauta"}, "p": {"Nominative": "nautae", "Genitive": "nautarum", "Dative": "nautis", "Accusative": "nautas", "Ablative": "nautis", "Vocative": "nautae"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch1',
  '{"lemma": "agricola", "display": "agricola, agricolae", "meaning": "n. (m) — farmer; 1st declension", "is_noun": true, "note": "Exception: agricola follows 1st declension endings but is grammatically masculine — adjectives agree in masculine forms. Same pattern as poeta and nauta.", "paradigm": {"s": {"Nominative": "agricola", "Genitive": "agricolae", "Dative": "agricolae", "Accusative": "agricolam", "Ablative": "agricola", "Vocative": "agricola"}, "p": {"Nominative": "agricolae", "Genitive": "agricolarum", "Dative": "agricolis", "Accusative": "agricolas", "Ablative": "agricolis", "Vocative": "agricolae"}}}'
);

-- ── Verb conjugation drills ─────────────────────────────────────
insert into drills (type, lp_multiplier, session_tag, content) values (
  'conjugation', 1.0, 'wheelock_ch1',
  '{"lemma": "esse", "display": "esse", "meaning": "to be", "conjugation_class": "irregular", "note": null, "forms": {"present": ["sum", "es", "est", "sumus", "estis", "sunt"], "future": ["ero", "eris", "erit", "erimus", "eritis", "erunt"], "imperative": ["es", "este"]}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'conjugation', 1.0, 'wheelock_ch1',
  '{"lemma": "amare", "display": "amare", "meaning": "to love", "conjugation_class": "1st conjugation", "note": null, "forms": {"present": ["amo", "amas", "amat", "amamus", "amatis", "amant"], "future": ["amabo", "amabis", "amabit", "amabimus", "amabitis", "amabunt"], "imperative": ["ama", "amate"]}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'conjugation', 1.0, 'wheelock_ch1',
  '{"lemma": "laudare", "display": "laudare", "meaning": "to praise", "conjugation_class": "1st conjugation", "note": null, "forms": {"present": ["laudo", "laudas", "laudat", "laudamus", "laudatis", "laudant"], "future": ["laudabo", "laudabis", "laudabit", "laudabimus", "laudabitis", "laudabunt"], "imperative": ["lauda", "laudate"]}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'conjugation', 1.0, 'wheelock_ch1',
  '{"lemma": "portare", "display": "portare", "meaning": "to carry", "conjugation_class": "1st conjugation", "note": null, "forms": {"present": ["porto", "portas", "portat", "portamus", "portatis", "portant"], "future": ["portabo", "portabis", "portabit", "portabimus", "portabitis", "portabunt"], "imperative": ["porta", "portate"]}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'conjugation', 1.0, 'wheelock_ch1',
  '{"lemma": "dare", "display": "dare", "meaning": "to give", "conjugation_class": "1st conjugation (irregular stem)", "note": null, "forms": {"present": ["do", "das", "dat", "damus", "datis", "dant"], "future": ["dabo", "dabis", "dabit", "dabimus", "dabitis", "dabunt"], "imperative": ["da", "date"]}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'conjugation', 1.0, 'wheelock_ch1',
  '{"lemma": "monere", "display": "monere", "meaning": "to warn, advise", "conjugation_class": "2nd conjugation", "note": null, "forms": {"present": ["moneo", "mones", "monet", "monemus", "monetis", "monent"], "future": ["monebo", "monebis", "monebit", "monebimus", "monebitis", "monebunt"], "imperative": ["mone", "monete"]}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'conjugation', 1.0, 'wheelock_ch1',
  '{"lemma": "videre", "display": "videre", "meaning": "to see", "conjugation_class": "2nd conjugation", "note": null, "forms": {"present": ["video", "vides", "videt", "videmus", "videtis", "vident"], "future": ["videbo", "videbis", "videbit", "videbimus", "videbitis", "videbunt"], "imperative": ["vide", "videte"]}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'conjugation', 1.0, 'wheelock_ch1',
  '{"lemma": "habere", "display": "habere", "meaning": "to have", "conjugation_class": "2nd conjugation", "note": null, "forms": {"present": ["habeo", "habes", "habet", "habemus", "habetis", "habent"], "future": ["habebo", "habebis", "habebit", "habebimus", "habebitis", "habebunt"], "imperative": ["habe", "habete"]}}'
);

-- ── Agreement drills ────────────────────────────────────────────
insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "puella magna", "translation": "\"great girl\" (subject)", "case": "nominative", "gender": "feminine", "number": "singular", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "amicus bonus", "translation": "\"good friend\" (subject)", "case": "nominative", "gender": "masculine", "number": "singular", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "animus malus", "translation": "\"bad spirit\" (subject)", "case": "nominative", "gender": "masculine", "number": "singular", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "vita bona", "translation": "\"good life\" (subject)", "case": "nominative", "gender": "feminine", "number": "singular", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "fama magna", "translation": "\"great fame\" (subject)", "case": "nominative", "gender": "feminine", "number": "singular", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "puellam magnam", "translation": "\"great girl\" (object)", "case": "accusative", "gender": "feminine", "number": "singular", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "amicum bonum", "translation": "\"good friend\" (object)", "case": "accusative", "gender": "masculine", "number": "singular", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "vitam malam", "translation": "\"bad life\" (object)", "case": "accusative", "gender": "feminine", "number": "singular", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "animum magnum", "translation": "\"great spirit\" (object)", "case": "accusative", "gender": "masculine", "number": "singular", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "famam bonam", "translation": "\"good reputation\" (object)", "case": "accusative", "gender": "feminine", "number": "singular", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "amici boni", "translation": "of a good friend", "case": "genitive", "gender": "masculine", "number": "singular", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "animi magni", "translation": "of a great spirit", "case": "genitive", "gender": "masculine", "number": "singular", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "amice bone", "translation": "\"O good friend!\" (address)", "case": "vocative", "gender": "masculine", "number": "singular", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "puellas magnas", "translation": "\"great girls\" (object)", "case": "accusative", "gender": "feminine", "number": "plural", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "amicos bonos", "translation": "\"good friends\" (object)", "case": "accusative", "gender": "masculine", "number": "plural", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "animos malos", "translation": "\"bad spirits\" (object)", "case": "accusative", "gender": "masculine", "number": "plural", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "vitas bonas", "translation": "\"good lives\" (object)", "case": "accusative", "gender": "feminine", "number": "plural", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "puellarum magnarum", "translation": "of great girls", "case": "genitive", "gender": "feminine", "number": "plural", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "amicorum bonorum", "translation": "of good friends", "case": "genitive", "gender": "masculine", "number": "plural", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "animorum malorum", "translation": "of bad spirits", "case": "genitive", "gender": "masculine", "number": "plural", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "vitarum bonarum", "translation": "of good lives", "case": "genitive", "gender": "feminine", "number": "plural", "is_exception": false}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "poeta magnus", "translation": "\"great poet\" (subject)", "case": "nominative", "gender": "masculine", "number": "singular", "is_exception": true}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "poetam malum", "translation": "\"bad poet\" (object)", "case": "accusative", "gender": "masculine", "number": "singular", "is_exception": true}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "poetas magnos", "translation": "\"great poets\" (object)", "case": "accusative", "gender": "masculine", "number": "plural", "is_exception": true}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "nauta bonus", "translation": "\"good sailor\" (subject)", "case": "nominative", "gender": "masculine", "number": "singular", "is_exception": true}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "nautam bonum", "translation": "\"good sailor\" (object)", "case": "accusative", "gender": "masculine", "number": "singular", "is_exception": true}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "nautas bonos", "translation": "\"good sailors\" (object)", "case": "accusative", "gender": "masculine", "number": "plural", "is_exception": true}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "agricola magnus", "translation": "\"great farmer\" (subject)", "case": "nominative", "gender": "masculine", "number": "singular", "is_exception": true}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "agricolam magnum", "translation": "\"great farmer\" (object)", "case": "accusative", "gender": "masculine", "number": "singular", "is_exception": true}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'agreement', 1.0, 'wheelock_ch1',
  '{"phrase": "agricolas magnos", "translation": "\"great farmers\" (object)", "case": "accusative", "gender": "masculine", "number": "plural", "is_exception": true}'
);