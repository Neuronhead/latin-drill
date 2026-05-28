-- ── Latina Exercitia — Chapters 4, 5, 6 Content ────────────────
-- Run in Supabase SQL Editor after schema.sql and seed_data.sql
-- Last updated: 2026-05-23

-- ── Part 1: Add imperfect tense to existing verb drills ────────

update drills
  set content = content || jsonb_build_object('forms',
    (content->'forms') || jsonb_build_object('imperfect', '["eram", "eras", "erat", "eramus", "eratis", "erant"]'::jsonb))
  where type = 'conjugation'
  and content->>'display' = 'esse';

update drills
  set content = content || jsonb_build_object('forms',
    (content->'forms') || jsonb_build_object('imperfect', '["amabam", "amabas", "amabat", "amabamus", "amabatis", "amabant"]'::jsonb))
  where type = 'conjugation'
  and content->>'display' = 'amare';

update drills
  set content = content || jsonb_build_object('forms',
    (content->'forms') || jsonb_build_object('imperfect', '["laudabam", "laudabas", "laudabat", "laudabamus", "laudabatis", "laudabant"]'::jsonb))
  where type = 'conjugation'
  and content->>'display' = 'laudare';

update drills
  set content = content || jsonb_build_object('forms',
    (content->'forms') || jsonb_build_object('imperfect', '["portabam", "portabas", "portabat", "portabamus", "portabatis", "portabant"]'::jsonb))
  where type = 'conjugation'
  and content->>'display' = 'portare';

update drills
  set content = content || jsonb_build_object('forms',
    (content->'forms') || jsonb_build_object('imperfect', '["dabam", "dabas", "dabat", "dabamus", "dabatis", "dabant"]'::jsonb))
  where type = 'conjugation'
  and content->>'display' = 'dare';

update drills
  set content = content || jsonb_build_object('forms',
    (content->'forms') || jsonb_build_object('imperfect', '["monebam", "monebas", "monebat", "monebamus", "monebatis", "monebant"]'::jsonb))
  where type = 'conjugation'
  and content->>'display' = 'monere';

update drills
  set content = content || jsonb_build_object('forms',
    (content->'forms') || jsonb_build_object('imperfect', '["videbam", "videbas", "videbat", "videbamus", "videbatis", "videbant"]'::jsonb))
  where type = 'conjugation'
  and content->>'display' = 'videre';

update drills
  set content = content || jsonb_build_object('forms',
    (content->'forms') || jsonb_build_object('imperfect', '["habebam", "habebas", "habebat", "habebamus", "habebatis", "habebant"]'::jsonb))
  where type = 'conjugation'
  and content->>'display' = 'habere';

-- ── Part 2: New verb drills (Ch.5) ─────────────────────────────

insert into drills (type, lp_multiplier, session_tag, content) values (
  'conjugation', 1.0, 'wheelock_ch5',
  '{"lemma": "cenare", "display": "cenare", "meaning": "to dine", "conjugation_class": "1st conjugation", "note": null, "forms": {"present": ["ceno", "cenas", "cenat", "cenamus", "cenatis", "cenant"], "future": ["cenabo", "cenabis", "cenabit", "cenabimus", "cenabitis", "cenabunt"], "imperfect": ["cenabam", "cenabas", "cenabat", "cenabamus", "cenabatis", "cenabant"], "imperative": ["cena", "cenat"]}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'conjugation', 1.0, 'wheelock_ch5',
  '{"lemma": "culpare", "display": "culpare", "meaning": "to blame, censure", "conjugation_class": "1st conjugation", "note": null, "forms": {"present": ["culpo", "culpas", "culpat", "culpamus", "culpatis", "culpant"], "future": ["culpabo", "culpabis", "culpabit", "culpabimus", "culpabitis", "culpabunt"], "imperfect": ["culpabam", "culpabas", "culpabat", "culpabamus", "culpabatis", "culpabant"], "imperative": ["culpa", "culpate"]}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'conjugation', 1.0, 'wheelock_ch5',
  '{"lemma": "manere", "display": "manere", "meaning": "to remain, stay", "conjugation_class": "2nd conjugation", "note": null, "forms": {"present": ["maneo", "manes", "manet", "manemus", "manetis", "manent"], "future": ["manebo", "manebis", "manebit", "manebimus", "manebitis", "manebunt"], "imperfect": ["manebam", "manebas", "manebat", "manebamus", "manebatis", "manebant"], "imperative": ["mane", "manete"]}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'conjugation', 1.0, 'wheelock_ch5',
  '{"lemma": "superare", "display": "superare", "meaning": "to overcome, surpass", "conjugation_class": "1st conjugation", "note": null, "forms": {"present": ["supero", "superas", "superat", "superamus", "superatis", "superant"], "future": ["superabo", "superabis", "superabit", "superabimus", "superabitis", "superabunt"], "imperfect": ["superabam", "superabas", "superabat", "superabamus", "superabatis", "superabant"], "imperative": ["supera", "superate"]}}'
);

-- possum (Ch.6 — irregular, no imperative)
insert into drills (type, lp_multiplier, session_tag, content) values (
  'conjugation', 1.0, 'wheelock_ch6',
  '{"lemma": "posse", "display": "posse", "meaning": "to be able, can", "conjugation_class": "irregular", "note": "possum = pot- + sum. pot- becomes pos- before forms of esse beginning with s.", "forms": {"present": ["possum", "potes", "potest", "possumus", "potestis", "possunt"], "future": ["potero", "poteris", "poterit", "poterimus", "poteritis", "poterunt"], "imperfect": ["poteram", "poteras", "poterat", "poteramus", "poteratis", "poterant"]}}'
);

-- ── Part 3: 2nd declension neuter nouns (Ch.4 & 5) ─────────────

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch4',
  '{"lemma": "bellum", "display": "bellum, belli", "meaning": "n. — war", "is_noun": true, "note": "2nd declension neuter: nominative, accusative, and vocative are always identical (-um singular, -a plural). Determine case from the word''s role in the sentence, not its ending.", "paradigm": {"s": {"Nominative": "bellum", "Genitive": "belli", "Dative": "bello", "Accusative": "bellum", "Ablative": "bello", "Vocative": "bellum"}, "p": {"Nominative": "bella", "Genitive": "bellorum", "Dative": "bellis", "Accusative": "bella", "Ablative": "bellis", "Vocative": "bella"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch4',
  '{"lemma": "consilium", "display": "consilium, consilii", "meaning": "n. — plan, purpose, counsel", "is_noun": true, "note": "2nd declension neuter: nominative, accusative, and vocative are always identical (-um singular, -a plural). Determine case from the word''s role in the sentence, not its ending.", "paradigm": {"s": {"Nominative": "consilium", "Genitive": "consilii", "Dative": "consilio", "Accusative": "consilium", "Ablative": "consilio", "Vocative": "consilium"}, "p": {"Nominative": "consilia", "Genitive": "consiliorum", "Dative": "consiliis", "Accusative": "consilia", "Ablative": "consiliis", "Vocative": "consilia"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch4',
  '{"lemma": "donum", "display": "donum, doni", "meaning": "n. — gift, present", "is_noun": true, "note": "2nd declension neuter: nominative, accusative, and vocative are always identical (-um singular, -a plural). Determine case from the word''s role in the sentence, not its ending.", "paradigm": {"s": {"Nominative": "donum", "Genitive": "doni", "Dative": "dono", "Accusative": "donum", "Ablative": "dono", "Vocative": "donum"}, "p": {"Nominative": "dona", "Genitive": "donorum", "Dative": "donis", "Accusative": "dona", "Ablative": "donis", "Vocative": "dona"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch4',
  '{"lemma": "otium", "display": "otium, otii", "meaning": "n. — leisure, peace", "is_noun": true, "note": "2nd declension neuter: nominative, accusative, and vocative are always identical (-um singular, -a plural). Determine case from the word''s role in the sentence, not its ending.", "paradigm": {"s": {"Nominative": "otium", "Genitive": "otii", "Dative": "otio", "Accusative": "otium", "Ablative": "otio", "Vocative": "otium"}, "p": {"Nominative": "otia", "Genitive": "otiorum", "Dative": "otiis", "Accusative": "otia", "Ablative": "otiis", "Vocative": "otia"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch4',
  '{"lemma": "periculum", "display": "periculum, periculi", "meaning": "n. — danger, risk", "is_noun": true, "note": "2nd declension neuter: nominative, accusative, and vocative are always identical (-um singular, -a plural). Determine case from the word''s role in the sentence, not its ending.", "paradigm": {"s": {"Nominative": "periculum", "Genitive": "periculi", "Dative": "periculo", "Accusative": "periculum", "Ablative": "periculo", "Vocative": "periculum"}, "p": {"Nominative": "pericula", "Genitive": "periculorum", "Dative": "periculis", "Accusative": "pericula", "Ablative": "periculis", "Vocative": "pericula"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch4',
  '{"lemma": "officium", "display": "officium, officii", "meaning": "n. — duty, service", "is_noun": true, "note": "2nd declension neuter: nominative, accusative, and vocative are always identical (-um singular, -a plural). Determine case from the word''s role in the sentence, not its ending.", "paradigm": {"s": {"Nominative": "officium", "Genitive": "officii", "Dative": "officio", "Accusative": "officium", "Ablative": "officio", "Vocative": "officium"}, "p": {"Nominative": "officia", "Genitive": "officiorum", "Dative": "officiis", "Accusative": "officia", "Ablative": "officiis", "Vocative": "officia"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch4',
  '{"lemma": "remedium", "display": "remedium, remedii", "meaning": "n. — cure, remedy", "is_noun": true, "note": "2nd declension neuter: nominative, accusative, and vocative are always identical (-um singular, -a plural). Determine case from the word''s role in the sentence, not its ending.", "paradigm": {"s": {"Nominative": "remedium", "Genitive": "remedii", "Dative": "remedio", "Accusative": "remedium", "Ablative": "remedio", "Vocative": "remedium"}, "p": {"Nominative": "remedia", "Genitive": "remediorum", "Dative": "remediis", "Accusative": "remedia", "Ablative": "remediis", "Vocative": "remedia"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch4',
  '{"lemma": "exitium", "display": "exitium, exitii", "meaning": "n. — destruction, ruin", "is_noun": true, "note": "2nd declension neuter: nominative, accusative, and vocative are always identical (-um singular, -a plural). Determine case from the word''s role in the sentence, not its ending.", "paradigm": {"s": {"Nominative": "exitium", "Genitive": "exitii", "Dative": "exitio", "Accusative": "exitium", "Ablative": "exitio", "Vocative": "exitium"}, "p": {"Nominative": "exitia", "Genitive": "exitiorum", "Dative": "exitiis", "Accusative": "exitia", "Ablative": "exitiis", "Vocative": "exitia"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch6',
  '{"lemma": "vitium", "display": "vitium, vitii", "meaning": "n. — fault, crime, vice", "is_noun": true, "note": "2nd declension neuter: nominative, accusative, and vocative are always identical (-um singular, -a plural). Determine case from the word''s role in the sentence, not its ending.", "paradigm": {"s": {"Nominative": "vitium", "Genitive": "vitii", "Dative": "vitio", "Accusative": "vitium", "Ablative": "vitio", "Vocative": "vitium"}, "p": {"Nominative": "vitia", "Genitive": "vitiorum", "Dative": "vitiis", "Accusative": "vitia", "Ablative": "vitiis", "Vocative": "vitia"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch5',
  '{"lemma": "caelum", "display": "caelum, caeli", "meaning": "n. — sky, heaven", "is_noun": true, "note": "2nd declension neuter: nominative, accusative, and vocative are always identical (-um singular, -a plural). Determine case from the word''s role in the sentence, not its ending.", "paradigm": {"s": {"Nominative": "caelum", "Genitive": "caeli", "Dative": "caelo", "Accusative": "caelum", "Ablative": "caelo", "Vocative": "caelum"}, "p": {"Nominative": "caela", "Genitive": "caelorum", "Dative": "caelis", "Accusative": "caela", "Ablative": "caelis", "Vocative": "caela"}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch5',
  '{"lemma": "verbum", "display": "verbum, verbi", "meaning": "n. — word", "is_noun": true, "note": "2nd declension neuter: nominative, accusative, and vocative are always identical (-um singular, -a plural). Determine case from the word''s role in the sentence, not its ending.", "paradigm": {"s": {"Nominative": "verbum", "Genitive": "verbi", "Dative": "verbo", "Accusative": "verbum", "Ablative": "verbo", "Vocative": "verbum"}, "p": {"Nominative": "verba", "Genitive": "verborum", "Dative": "verbis", "Accusative": "verba", "Ablative": "verbis", "Vocative": "verba"}}}'
);

-- ── Part 4: -er adjectives (Ch.5) ──────────────────────────────

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch5',
  '{"lemma": "liber", "display": "liber / libera / liberum", "meaning": "Adj. — free", "is_noun": false, "note": "-er adjective that keeps the -e- throughout (like puer). Check: liber → libera → liberum. The masculine nominative ends in -er but all other forms use the stem liber-.", "paradigm": {"s": {"Nominative": ["liber", "libera", "liberum"], "Genitive": ["liberi", "liberae", "liberi"], "Dative": ["libero", "liberae", "libero"], "Accusative": ["liberum", "liberam", "liberum"], "Ablative": ["libero", "libera", "libero"], "Vocative": ["liber", "libera", "liberum"]}, "p": {"Nominative": ["liberi", "liberae", "libera"], "Genitive": ["liberorum", "liberarum", "liberorum"], "Dative": ["liberis", "liberis", "liberis"], "Accusative": ["liberos", "liberas", "libera"], "Ablative": ["liberis", "liberis", "liberis"], "Vocative": ["liberi", "liberae", "libera"]}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch5',
  '{"lemma": "noster", "display": "noster / nostra / nostrum", "meaning": "Adj. — our, ours", "is_noun": false, "note": "-er adjective that drops the -e- after the nominative masculine (like ager). Stem is nostr-. Compare: noster (nom. m.) → nostra (nom. f.) — the -e- disappears.", "paradigm": {"s": {"Nominative": ["noster", "nostra", "nostrum"], "Genitive": ["nostri", "nostrae", "nostri"], "Dative": ["nostro", "nostrae", "nostro"], "Accusative": ["nostrum", "nostram", "nostrum"], "Ablative": ["nostro", "nostra", "nostro"], "Vocative": ["noster", "nostra", "nostrum"]}, "p": {"Nominative": ["nostri", "nostrae", "nostra"], "Genitive": ["nostrorum", "nostrarum", "nostrorum"], "Dative": ["nostris", "nostris", "nostris"], "Accusative": ["nostros", "nostras", "nostra"], "Ablative": ["nostris", "nostris", "nostris"], "Vocative": ["nostri", "nostrae", "nostra"]}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch5',
  '{"lemma": "pulcher", "display": "pulcher / pulchra / pulchrum", "meaning": "Adj. — beautiful, handsome, fine", "is_noun": false, "note": "-er adjective that drops the -e- after the nominative masculine (like ager). Stem is pulchr-. Compare: pulcher (nom. m.) → pulchra (nom. f.) — the -e- disappears.", "paradigm": {"s": {"Nominative": ["pulcher", "pulchra", "pulchrum"], "Genitive": ["pulchri", "pulchrae", "pulchri"], "Dative": ["pulchro", "pulchrae", "pulchro"], "Accusative": ["pulchrum", "pulchram", "pulchrum"], "Ablative": ["pulchro", "pulchra", "pulchro"], "Vocative": ["pulcher", "pulchra", "pulchrum"]}, "p": {"Nominative": ["pulchri", "pulchrae", "pulchra"], "Genitive": ["pulchrorum", "pulchrarum", "pulchrorum"], "Dative": ["pulchris", "pulchris", "pulchris"], "Accusative": ["pulchros", "pulchras", "pulchra"], "Ablative": ["pulchris", "pulchris", "pulchris"], "Vocative": ["pulchri", "pulchrae", "pulchra"]}}}'
);

insert into drills (type, lp_multiplier, session_tag, content) values (
  'declension', 1.0, 'wheelock_ch5',
  '{"lemma": "miser", "display": "miser / misera / miserum", "meaning": "Adj. — wretched, unfortunate, miserable", "is_noun": false, "note": "-er adjective that keeps the -e- throughout (like puer and liber). Stem is miser-. Compare: miser (nom. m.) → misera (nom. f.) — the -e- is retained.", "paradigm": {"s": {"Nominative": ["miser", "misera", "miserum"], "Genitive": ["miseri", "miserae", "miseri"], "Dative": ["misero", "miserae", "misero"], "Accusative": ["miserum", "miseram", "miserum"], "Ablative": ["misero", "misera", "misero"], "Vocative": ["miser", "misera", "miserum"]}, "p": {"Nominative": ["miseri", "miserae", "misera"], "Genitive": ["miserorum", "miserarum", "miserorum"], "Dative": ["miseris", "miseris", "miseris"], "Accusative": ["miseros", "miseras", "misera"], "Ablative": ["miseris", "miseris", "miseris"], "Vocative": ["miseri", "miserae", "misera"]}}}'
);