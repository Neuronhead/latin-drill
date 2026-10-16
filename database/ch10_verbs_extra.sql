-- ch10_verbs_extra.sql
-- Latina Exercitia: verb drills for vivere and dicere (Wheelock Capvt X vocabulary) and ferre
-- (the fourth irregular imperative named in Capvt X: dic, duc, fac, fer).
-- 3 rows. Insert file: run ONCE. A second run fails with "duplicate key" (unique index drills_one_item_per_file).
-- Reversible: delete from drills where session_tag = 'wheelock_ch10_verbs_extra';

insert into drills (type, lp_multiplier, session_tag, content) values
('conjugation', 1.2, 'wheelock_ch10_verbs_extra', '{
  "display": "vivere",
  "meaning": "to live",
  "conjugation_class": "3rd conjugation",
  "note": "Regular 3rd conjugation, like agere: short -e- in the infinitive, -e- as the future sign (vivet = he will live) and -e- before -ba- in the imperfect.",
  "forms": {
    "present":    ["vivo", "vivis", "vivit", "vivimus", "vivitis", "vivunt"],
    "future":     ["vivam", "vives", "vivet", "vivemus", "vivetis", "vivent"],
    "imperfect":  ["vivebam", "vivebas", "vivebat", "vivebamus", "vivebatis", "vivebant"],
    "imperative": ["vive", "vivite"]
  }
}'::jsonb),
('conjugation', 1.2, 'wheelock_ch10_verbs_extra', '{
  "display": "dicere",
  "meaning": "to say, tell, speak; name, call",
  "conjugation_class": "3rd conjugation",
  "note": "Regular 3rd conjugation except the singular imperative, which drops its final -e: dic, not dice. The plural is regular: dicite. Same short-imperative group as duc, fac and fer.",
  "forms": {
    "present":    ["dico", "dicis", "dicit", "dicimus", "dicitis", "dicunt"],
    "future":     ["dicam", "dices", "dicet", "dicemus", "dicetis", "dicent"],
    "imperfect":  ["dicebam", "dicebas", "dicebat", "dicebamus", "dicebatis", "dicebant"],
    "imperative": ["dic", "dicite"]
  }
}'::jsonb),
('conjugation', 1.2, 'wheelock_ch10_verbs_extra', '{
  "display": "ferre",
  "meaning": "to bring, bear, carry",
  "conjugation_class": "irregular",
  "note": "Irregular in the present only: some forms lose the connecting vowel (fers, fert, fertis; infinitive ferre). Imperative fer, ferte. Future and imperfect are regular 3rd conjugation. Wheelock covers the full verb in Capvt XXXI.",
  "forms": {
    "present":    ["fero", "fers", "fert", "ferimus", "fertis", "ferunt"],
    "future":     ["feram", "feres", "feret", "feremus", "feretis", "ferent"],
    "imperfect":  ["ferebam", "ferebas", "ferebat", "ferebamus", "ferebatis", "ferebant"],
    "imperative": ["fer", "ferte"]
  }
}'::jsonb);
