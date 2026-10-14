"""Build dictionary.csv for Latina Exercitia from Whitaker's Words DICTLINE.GEN.
Source: https://raw.githubusercontent.com/mk270/whitakers-words/master/DICTLINE.GEN (free for any use).
Usage: python3 dictionary_build.py DICTLINE.GEN > entries.jsonl  (CSV is written from the JSON lines)

Fixed-width: 4 stems x 19 cols (0-75), POS/inflection codes 76-99, flags 100-108, gloss 110+.
"""
import sys, json, re, unicodedata

ORD = {'1': '1st', '2': '2nd', '3': '3rd', '4': '4th', '5': '5th'}
GEN = {'M': 'm', 'F': 'f', 'N': 'n', 'C': 'm/f', 'X': ''}
AGE = {'A': 'archaic', 'B': 'early', 'C': 'classical', 'D': 'late', 'E': 'later',
       'F': 'medieval', 'G': 'scholar', 'H': 'modern', 'X': ''}
FREQ = {'A': 'very frequent', 'B': 'frequent', 'C': 'common', 'D': 'lesser',
        'E': 'uncommon', 'F': 'very rare', 'I': 'inscription', 'M': 'graffiti',
        'N': 'Pliny only', 'X': ''}


def st(s):
    s = s.strip()
    return '' if s in ('', 'zzz') else s


def noun(s, d, v, g):
    s1, s2 = s[0], s[1]
    nom = gen = None
    if d == '1':
        nom, gen = {'1': ('a', 'ae'), '6': ('e', 'es'), '7': ('es', 'ae'),
                    '8': ('as', 'ae')}.get(v, ('a', 'ae'))
        nom, gen = s1 + nom, s2 + gen
    elif d == '2':
        e = {'1': ('us', 'i'), '2': ('um', 'i'), '3': ('', 'i'), '4': ('us', 'i'),
             '5': ('us', 'i'), '6': ('os', 'i'), '7': ('os', 'i'), '8': ('on', 'i'),
             '9': ('us', 'i')}.get(v, ('us', 'i'))
        if v == '4' and g == 'N':
            e = ('um', 'i')
        nom, gen = s1 + e[0], s2 + e[1]
    elif d == '3':
        nom, gen = s1, s2 + ('os' if v == '9' else 'is')
    elif d == '4':
        nom, gen = {'1': ('us', 'us'), '2': ('u', 'us'), '3': ('us', 'u'),
                    '4': ('u', 'u')}.get(v, ('us', 'us'))
        nom, gen = s1 + nom, s2 + gen
    elif d == '5':
        nom, gen = s1 + 'es', s2 + 'ei'
    else:  # 9 = indeclinable / abbreviation
        return s1, [], 'indecl.'
    note = ORD.get(d, '') + ' decl.'
    return nom, [gen] if gen != nom or d == '9' else [gen], note


def verb(s, c, v, kind):
    s1, s2, s3, s4 = s
    dep = kind == 'DEP'
    semi = kind == 'SEMIDEP'
    def pp(stem, end):
        return stem + end if stem else '-'
    if c == '5' and v == '1':   # compounds of sum: absum, abesse, afui, afuturus
        return s1 + 'um', [pp(s2, 'esse'), pp(s3, 'i'), pp(s4, 'urus')], 'irregular (like sum)'
    if c == '5' and v == '2':   # possum, posse, potui
        return s1 + 'um', [s1 + 'e', pp(s3, 'i')], 'irregular (like possum)'
    if c == '6' and v == '1':   # eo, ire, ivi, itum
        return s1 + 'o', [pp(s2, 're'), pp(s3, 'i'), pp(s4, 'um')], 'irregular (like eo)'
    if c == '6' and v == '2':   # volo, velle; nolo, nolle; malo, malle
        return s1 + 'o', [pp(s2, 'le') if s2 else '-', pp(s3, 'i')], 'irregular (like volo)'
    if c == '3' and v == '2':   # fero, ferre, tuli, latus
        return s1 + 'o', [pp(s2, 're'), pp(s3, 'i'), pp(s4, 'us')], 'irregular (like fero)'
    if c == '3' and v == '3':   # fio, fieri, factus sum
        if s1.endswith('fi'):
            return s1 + 'o', [s2 + 'ieri', pp(s4, 'us sum')], 'irregular (like fio)'
        return s1 + 'o', [s2 + 'ere', pp(s3, 'i'), pp(s4, 'us')], 'irregular'
    if c == '7' and v == '3':   # edo, esse, edi, esus
        return s1 + 'o', [s2 + 'se'], 'irregular (like edo)'
    if c == '7' and v == '1':
        return 'aio', [], 'defective'
    if c == '7' and v == '2':
        return 'inquam', [], 'defective'
    if c == '8':   # archaic alternate forms (amasso, faxo) of verbs listed normally
        return None, [], ''
    if c == '9':   # indeclinable foreign words
        return s1, [], 'indecl.'
    if c in ('5', '6', '7'):
        parts = [p for p in s if p]
        return parts[0] + 'o', [], 'irregular'
    if not s1 and s3:   # perfect-only verbs: memini, odi, coepi
        return s3 + 'i', ([s4 + 'urus'] if s4 else []), 'perfect forms only'
    if c == '1':
        p1, inf, note = 'o', 'are', '1st conj.'
        if dep: inf = 'ari'
    elif c == '2':
        p1, inf, note = 'eo', 'ere', '2nd conj.'
        if dep: inf = 'eri'
    elif c == '3' and v == '4':
        p1, inf, note = 'io', 'ire', '4th conj.'
        if dep: inf = 'iri'
    else:
        p1, inf, note = 'o', 'ere', '3rd conj.'
        if dep: inf = 'i'
        if s1.endswith('i') and s1 != s2 and not dep:
            note = '3rd conj. (-io)'
    if c == '3' and v == '4' and s1.endswith('i'):
        p1 = 'o'  # stem already carries the i
    if c == '2' and s1.endswith('e'):
        p1 = 'o'
    first = s1 + (p1 + 'r' if dep else p1)
    out = [s2 + inf if s2 else '-']
    if dep:
        out.append(s4 + 'us sum' if s4 else '-')
    else:
        out.append(s3 + 'i' if s3 else '-')
        if semi:
            out[-1] = s4 + 'us sum' if s4 else '-'
        elif s4:
            out.append(s4 + 'us')
    if dep: note += ', deponent'
    if semi: note += ', semi-deponent'
    return first, out, note


def adj(s, d, v, cmp_):
    s1, s2, s3, s4 = s
    if d == '0':  # full comparison stems
        f = [s2 + 'a', s2 + 'um']
        if s3: f.append(s3 + 'or')
        if s4: f.append(s4 + 'mus')
        return s1 + 'us', f, ''
    if d == '1':
        if v == '2':
            return s1, [s2 + 'a', s2 + 'um'], ''
        if v == '3':  # -ius genitive (unus, nauta group)
            return s1 + 'us', [s2 + 'a', s2 + 'um', 'gen. -ius'], ''
        if v in ('6', '7'):
            return s1 + 'os', [s2 + 'a', s2 + 'on'], ''
        return s1 + 'us', [s2 + 'a', s2 + 'um'], ''
    if d == '2':
        return s1 + ('os' if v != '1' else 'us'), [s2 + 'e', s2 + 'on'], ''
    if d == '3':
        if v == '1':
            return s1, ['gen. ' + s2 + 'is'], 'one termination'
        if v == '2':
            return s1 + 'is', [s2 + 'e'], ''
        if v == '3':
            return s1, [s2 + 'is', s2 + 'e'], ''
        if v == '6':
            return s1 + 'ys', [s2 + 'yos'], ''
        return s1, [s2 + 'is'], ''
    if d == '9':
        return s1, [], 'indecl.'
    return s1, [], ''


def strip_macrons(t):
    return ''.join(ch for ch in unicodedata.normalize('NFD', t)
                   if unicodedata.category(ch) != 'Mn').lower()


PRON_TABLE = {
    ('aliqu', 'INDEF'): ('aliquis', 'aliqua, aliquid'),
    ('aliqu', 'ADJECT'): ('aliqui', 'aliqua, aliquod'),
    ('eccill', ''): ('eccille', ''),
    ('ego', ''): ('ego', 'mei'),
    ('h', ''): ('hic', 'haec, hoc'),
    ('i', 'PERS'): ('is', 'ea, id'),
    ('i', 'DEMONS'): ('idem', 'eadem, idem'),
    ('ill', ''): ('ille', 'illa, illud'),
    ('ips', ''): ('ipse', 'ipsa, ipsum'),
    ('iss', ''): ('isse', 'issa, issum'),
    ('ist', ''): ('iste', 'ista, istud'),
    ('n', ''): ('nos', 'nostrum/nostri'),
    ('oll', ''): ('olle', 'olla, ollud'),
    ('qu', 'REL'): ('qui', 'quae, quod'),
    ('qu', 'INTERR'): ('quis', 'quid'),
    ('qu', 'INDEF'): ('quis', 'quid'),
    ('qu', 'ADJECT'): ('qui', 'quae, quod'),
    ('seips', ''): ('seipse', ''),
    ('semetips', ''): ('semetipse', ''),
    ('tu', ''): ('tu', 'tui'),
    ('v', ''): ('vos', 'vestrum/vestri'),
    ('', 'REFLEX'): ('sui', 'sibi, se'),
}

MANUAL = [  # entries Whitaker builds in program code rather than DICTLINE
    {'src_line': 0, 'headword': 'sum', 'parts': 'esse, fui, futurus', 'pos': 'v',
     'gender': '', 'note': 'irregular', 'glosses': ['be', 'exist', 'also used to form verb perfect passive tenses with NOM PERF PPL'],
     'age': '', 'freq': 'very frequent', 'freq_code': 'A'},
]


def pron(stems, kind):
    s1 = stems[0]
    for key in ((s1, kind), (s1, '')):
        if key in PRON_TABLE:
            return PRON_TABLE[key]
    if kind == 'REFLEX':
        return PRON_TABLE[('', 'REFLEX')]
    return (s1, '')


def pack(stems, kind, gloss):
    m = re.match(r'\(w/-(\w+)\)\s*', gloss)
    if stems[0] != 'qu' or not m:
        return None, gloss
    suf = m.group(1)
    base = 'quis' if kind in ('INDEF', 'INTERR') or suf == 'quam' else 'qui'
    return base + suf, gloss[m.end():]


def build(lineno, line):
    stems = [st(line[i * 19:i * 19 + 19]) for i in range(4)]
    codes = line[76:100].split()
    pos = codes[0]
    flags = line[100:109].split()
    gloss = line[110:].strip()
    gender = ''
    kind = codes[3] if len(codes) > 3 else ''
    if pos == 'N':
        head, parts, note = noun(stems, codes[1], codes[2], codes[3])
        gender = GEN.get(codes[3], '')
    elif pos == 'V':
        head, parts, note = verb(stems, codes[1], codes[2], kind)
        if kind in ('TRANS', 'INTRANS', 'IMPERS'):
            note += ', ' + {'TRANS': 'trans.', 'INTRANS': 'intrans.', 'IMPERS': 'impers.'}[kind]
    elif pos == 'ADJ':
        head, parts, note = adj(stems, codes[1], codes[2], kind)
    elif pos == 'PRON':
        h, p = pron(stems, kind)
        head, parts, note = h, ([p] if p else []), ''
    elif pos == 'PACK':
        head, gloss = pack(stems, kind, gloss)
        parts, note, pos = [], '', 'PRON'
    elif pos == 'ADV' and len([x for x in stems if x]) > 1:
        ss = [x for x in stems if x]
        head, parts, note = ss[0], ss[1:], ''
    elif pos == 'PREP':
        head, parts, note = stems[0], [], ('+ ' + codes[1].lower()) if len(codes) > 1 else ''
    else:
        ss = [x for x in stems if x]
        head, parts, note = (ss[0] if ss else ''), [], ''
    return {
        'src_line': lineno, 'headword': head, 'parts': ', '.join(parts),
        'pos': pos.lower(), 'gender': gender, 'note': note, 'gloss': gloss,
        'age': AGE.get(flags[0], '') if flags else '',
        'freq': FREQ.get(flags[3], '') if len(flags) > 3 else '',
        'freq_code': flags[3] if len(flags) > 3 else 'X',
    }


def main(path):
    out, errs = [], 0
    for lineno, line in enumerate(open(path, encoding='latin-1').read().splitlines(), 1):
        if len(line) < 110 or not line[76:100].split():
            continue
        g = line[110:].strip()
        if g.startswith('|') and out and out[-1]['src_line'] == lineno - 1 - out[-1].get('_cont', 0):
            out[-1]['gloss'] += ' ' + g.lstrip('|').strip()
            out[-1]['_cont'] = out[-1].get('_cont', 0) + 1
            continue
        try:
            rec = build(lineno, line)
        except Exception as ex:
            sys.stderr.write(f'{lineno}: {ex}\n'); errs += 1
            continue
        if rec['headword'] and rec['gloss']:
            out.append(rec)
    for m in MANUAL:
        out.append(dict(m, gloss='; '.join(m['glosses'])))
    seen, n = set(), 0
    for r in out:
        r.pop('_cont', None)
        r['glosses'] = [x.strip() for x in r.pop('gloss').rstrip(';').split(';') if x.strip()] if 'gloss' in r else r['glosses']
        key = (r['headword'], r['parts'], r['pos'], '|'.join(r['glosses']))
        if key in seen:
            continue
        seen.add(key)
        r['head_key'] = strip_macrons(r['headword']).replace('j', 'i').replace('v', 'u')
        print(json.dumps(r, ensure_ascii=False)); n += 1
    sys.stderr.write(f'entries: {n}, errors: {errs}\n')


if __name__ == '__main__':
    main(sys.argv[1])
