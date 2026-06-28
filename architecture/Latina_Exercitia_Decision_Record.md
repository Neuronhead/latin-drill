# Latina Exercitia — Working Decision Record

> **Living document for this conversation.** Updated as decisions are settled.
> **Last updated:** 2026-06-26 (editing model changed — Claude Code is sole editor; planning conversation instructs)
>
> **Source conversation (backlink):** https://claude.ai/chat/74d2bac6-db79-4168-8018-e7197a1c0750
>
> **CANONICAL HOME:** `architecture/Latina_Exercitia_Decision_Record.md` in the GitHub repo (`Neuronhead/latin-drill`). Version-controlled; readable/writable by Claude Code directly; travels with the code.
>
> **SOURCE OF TRUTH RULE:** This file in the repo is the **single source of truth**. There is no second living copy. The **Drive copy** (project working folder), if present, is optional redundancy, not canonical; a stray copy found anywhere defers to this one.
>
> **EDITING MODEL:** **Claude Code is the sole editor of this document.** The planning conversation contributes by **instruction, not by mirroring text** — it describes what should change ("refresh the orientation," "add a decision about X," "mark item Y done") and Claude Code authors the wording, commits, and pushes. The planning artifact is a within-session working surface only; it is not kept byte-aligned with this file, so no verbatim relay is needed.
>
> **Drive locations (redundancy / related):**
> - Project working folder: https://drive.google.com/drive/folders/1dbR9TolEveN1x2MykTAdTO2-ofG4BpIH — Latina Exercitia working files.
> - Global architecture standards folder (all projects): https://drive.google.com/drive/folders/19yYxldBfxMl2JQ2B5xooyYnBPnbADpC9 — overarching standards this project will draw on.
>
> **Sync cadence (agreed):** Drive copy updated at checkpoints on request ("sync it"), not every turn.

---

## Where we're at (quick orientation)

> **How to resume:** read this section + *Next steps* below — this file is the single source of truth. At session start, Claude Code pastes these two sections back to the planning conversation as the re-sync ritual. This orientation is refreshed at each checkpoint.

We're laying the **local development + portability foundations** for Latina Exercitia *before* building further features. The app is live (Netlify + hosted Supabase) but **pre-launch — no real users yet**, so foundational choices are migration-cost-free.

**Direction settled:** full Supabase stack locally (CLI + Docker) for dev + offline backup; hosted cloud as current production; **self-hosted Supabase on an Azure VM** as medium-term production. All three are the *same software* — switching is mostly config. Portability is pursued via two abstraction seams (`dataProvider.js`, `aiProvider.js`), Postgres-native authorization, and "don't over-abstract."

**Current reality (verified by Claude Code 2026-06-26):** all decisions are *planned, none built*. Codebase is greenfield — zero JS files, Supabase calls inline ×3, hardcoded anon key ×3, no local env, **Docker + Supabase CLI both absent**. The repo schema is **not self-contained** (`profiles`/`scores` undefined), so it can't bootstrap a local DB yet.

**The immediate path (in order):** (1) install Docker Desktop + Supabase CLI → (2) reconstruct `profiles`/`scores` via `supabase db dump` so the schema is self-contained → (3) `supabase start` for the local stack. Everything else (abstractions, config-switch, AI) comes after the local stack stands up. AI work remains *architecture-only* for now.

**Housekeeping done this session:** decision record made canonical in the repo; planning artifact + repo reconciled into one version; documentation-system map drafted (lives in chat until Drive connector recovers).

---

## Roles & shared-file workflow (brief)

- **Planning conversation (Claude in chat):** architecture, reasoning, decisions. Sets direction and *instructs* what this record should say — does not edit the file or mirror its text.
- **Claude Code:** sole editor of this document; also owns execution, codebase ground truth, and issues found during implementation. Authors the wording, commits, and pushes.
- **Dan:** relays instructions from the planning conversation to Claude Code (and findings back). No verbatim text is passed in either direction.
- **Re-sync ritual:** at the start of a session, Claude Code pastes the *Where we're at* + *Next steps* sections back to the planning conversation so both sides share current status.
- **Convention:** mark items *exists today* vs. *planned* so the execution side isn't misled. Conflicts Claude Code finds in the codebase are recorded here.

---

## Current state (repo ground truth — verified by Claude Code, 2026-06-26)

> Distinguishes **exists today** from **planned**. Verified directly against the working tree on branch `main`. This section is the "exists today" column the planning side asked for; everything under *Decisions* below remains **planned, none built**.

**Data-access / AI abstraction — neither exists.** There are **zero `.js` files** in the project. No `dataProvider.js`, no `aiProvider.js`, no module of any kind. Every Supabase call is inline in the three HTML files (`index.html`, `educator.html`, `dashboard.html`), each constructing its own client and calling `supa.from(...)` / auth directly. The seams in Decisions 4 & 8 are **100% greenfield** — nothing to refactor, only to introduce.

**Credentials — hardcoded per-file, three identical copies.** Each HTML file carries the same literal `SUPA_URL` + `SUPA_KEY` (the **anon** JWT, exp 2093) and `supabase.createClient(...)`. The anon key being public is fine by Supabase's model, but it is **triplicated**, so any project switch today means editing three files. This is exactly the "manual-credential-swap approach" Decision 1 rejected — confirmed as the current baseline.

**Config switch — none.** No `config.js`, no `.env`, no build step. The hosted project is wired in directly.

**Local dev environment — none. All local work hits production Supabase.** No `supabase/` folder; `supabase init` has never been run.

**Docker — not installed.** `docker` not on PATH. **Supabase CLI — also not installed.** (Node v22.19 / npm 10.9 are present.) So the local-stack to-do has **two** unmet prerequisites, not one.

**`database/` folder — three hand-run SQL scripts, no migration tooling.**
- `schema.sql` — **incremental, not a full schema.** It `alter table`s pre-existing `profiles` and `scores` (**which it never creates**), then creates `drills`, `user_mastery`, `lp_events`, plus RLS policies + grants. Header says "Run in Supabase SQL Editor."
- `seed_data.sql` — Wheelock Ch. 1 seed. · `ch456_content.sql` — Ch. 4/5/6 content.
- These are not timestamped CLI migrations. Authorization **is already Postgres-native** (RLS + grants live in SQL), consistent with Decision 5.

### Conflicts / flags against the decisions

1. **The repo schema cannot bootstrap a local DB on its own (correction to a to-do assumption).** "Formalize schema as SQL migration files" is framed as merely promoting existing SQL to source-of-truth. But `profiles` and `scores` are assumed-existing and never defined in-repo, so a clean `supabase start` from these files will fail. Reconstructing those two tables (likely `supabase db dump` from the hosted project once CLI/Docker exist) is a **prerequisite to local setup**, not a side-effect — sequence it first.
2. **Two blockers, not one.** "Confirm Docker" should become "install Docker Desktop **+** Supabase CLI."
3. **`.gitignore` excludes `*.docx`**, so the in-repo `Latin Drills Architecture.docx` isn't reliably version-controlled — consistent with the record's "Drive is durable source of truth" stance; noted, not a conflict.
4. **No conflict on the guardrails.** Greenfield reality is fully compatible with Decision 6 (don't over-abstract): the first `dataProvider.js` can be a thin app-domain wrapper over the current inline calls with no speculative switching machinery. The config-switch is needed regardless of abstraction, purely to de-triplicate the three credential blocks.

---

## Decisions (settled)

**1. Local environment = full Supabase stack via CLI + Docker.**
Not a bare Postgres and not the manual-credential-swap approach. Reasoning: the app talks to Supabase's full API surface (auth + PostgREST), so the local stack must match it. `supabase start` runs an API-identical copy locally. Free, open-source, no subscription. Serves dev *and* the offline-backup goal. Cross-platform Mac ↔ Windows built in.

**2. No subscription required for local Supabase.** Subscription only applies to the hosted cloud service (which also has a free tier). Docker Desktop licensing is separate — free for individuals/small business; confirm at install.

**3. Medium-term production target = self-hosted Supabase on an Azure VM.**
Low-rework path because it's the *same software* as local and cloud. Moving there is a Postgres + storage migration within one system plus a config change — no auth-provider swap, no forced password resets, no `signIn()` rewrite.

**4. Portability via a single data-access abstraction (`dataProvider.js`), not scattered Supabase calls.**
The app calls app-level methods (`getDrillsForChapter(6)`, `saveScore(...)`, `signIn(...)`); a swappable module behind that interface decides *how*. Defends exactly the two seams we care about: makes the Azure-VM move trivial and an eventual microservices move survivable. **Interface must be named in app-domain terms, not database/SQL terms** — no leaking SQL through the seam.

**5. Authorization logic kept Postgres-native where possible** (RLS policies, DB functions, schema as SQL migrations in Git). The more the security model lives in Postgres, the more it travels with the database to any future backend.

**6. Don't over-abstract.** Define the interface well now (cheap — naming discipline); defer building actual backend-swapping machinery until a second backend really exists. No speculative switching infrastructure.

**7. User-account backup: no action now.** Pre-launch, nothing to protect. When real users exist, a routine whole-database dump (`supabase db dump`) covers the `auth` data automatically — no separate mechanism to build. Cloud → local/self-hosted restores keep password hashes intact (same software).

**8. Reserve an AI provider abstraction (`aiProvider.js`) — sibling seam to `dataProvider.js`.** *Architectural decision only; no AI being built yet.* The app will call app-domain methods (e.g. `checkTranslation(userAnswer, storedAnswer, direction)`) returning a **structured verdict**, not bare true/false — likely `{ equivalent, confidence, reasoning, flaggable }` — so the provider behind it is swappable without touching the app. First use case: judging whether a user's English↔Latin translation is *effectively* equivalent to a stored answer despite different words/order, with a **user-feedback loop** (user can dispute the judgement and say why). Same reasoning as the database seam, and *stronger* here: unlike Postgres instances, AI models are **not** interchangeable, so the ability to swap providers on evidence matters more. Re-opens the previously-parked "Phase 2 answer-checking" feature (earlier candidates: CLTK + sentence-transformers, Groq/Gemini free tiers); Ollama is a new candidate in that slot.

---

## Next steps (to-do)

- [x] **Confirmed toolchain status (2026-06-26):** Docker Desktop *and* Supabase CLI both absent from the machine.
- [ ] **Install Docker Desktop + Supabase CLI** — still pending; the **hard gate** before any local setup can begin.
- [ ] **Reconstruct missing table definitions** (`profiles`, `scores`) — pull from the hosted project via `supabase db dump` so the repo schema is self-contained. **Prerequisite to local stack** — without it, `supabase start` fails.
- [ ] **Set up the local Supabase stack** (`supabase init` / `supabase start`) — after the two items above.
- [ ] **Formalize schema as proper migration files** — not just relabeling; current SQL is incremental/incomplete (see Current state). Becomes source of truth once self-contained.
- [ ] **Introduce `dataProvider.js`** — thin app-domain wrapper over the existing inline calls (greenfield; no machinery). Before the next features add more call sites.
- [ ] **Decide config-switch mechanism** (`config.js` local vs. hosted) — needed regardless of abstraction, purely to de-triplicate the three credential blocks.
- [ ] **Reserve `aiProvider.js` in the architecture** alongside `dataProvider.js` — draft the interface + verdict shape; no implementation yet.
- [ ] **Capture user-feedback data from day one** (even in prototyping) — store disputes ("you said equivalent, I disagree, why"). Cheap to collect, expensive to reconstruct; it's what makes later provider/prompt decisions evidence-based.
- [ ] (Discussion pending) **Documentation approach** — how/where these decisions get captured permanently.

---

## Future strategies (noted for later — not actionable now)

- **Eventual migration to Azure microservices** — possible but is a *partial rebuild*, not a migration: Postgres/data/users stay; the auto-API (PostgREST), auth service, and RLS-based authorization get rebuilt into your own services. `dataProvider.js` is what keeps the frontend unchanged through this. Only pay this cost if abandoning Supabase-as-software.
- **User-account backup routine** — once there are real signups: periodic whole-DB dump including `auth`; do a test-restore to verify fidelity across Supabase versions. Open question: where backups live (Azure VM / local disk / object storage) and how often.
- **Auth-provider swap** (only if ever leaving Supabase entirely) — this is the genuinely leaky transition: exporting users *with* password hashes is provider-specific and can force a global password reset. Avoided entirely by the Azure-VM-self-hosted path.
- **AI provider choice (deliberately unsettled)** — Ollama (local/self-hosted open models — on-brand for portability, no fees, self-hosts on a VM like Supabase) vs. cloud API (stronger reasoning) vs. hybrid. **Open empirical question:** small local models likely underperform on Latin equivalence (morphologically rich, subtle judgement) — must be *tested on real examples* before relying on it, not chosen on philosophy. The model-quality landscape moves fast; choose on fresh evaluation at implementation time. Dan has further efficiency ideas to share that may shape this.
- **Broader AI uses** — beyond translation-equivalence; to be defined later. The `aiProvider.js` seam is meant to accommodate these without rearchitecting.

---

## Open questions

- ~~Docker Desktop: installed or from-scratch?~~ **Resolved 2026-06-26: from-scratch — not installed; Supabase CLI also absent.**
- Documentation: principles doc vs. inline-in-repo vs. Drive decision log? (about to discuss)
- AI provider: which one — pending evaluation on real Latin examples (deliberately unsettled).
- AI direction: should equivalence-checking work equally for English→Latin *and* Latin→English? (different difficulty profiles)
- (Parked) Backup location + frequency — real-users-era decision.
