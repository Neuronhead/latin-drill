-- ── Latina Exercitia — Database Schema ───────────────────────────
-- Run in Supabase SQL Editor
-- Last updated: 2026-05-23

-- ── Extend profiles table ─────────────────────────────────────────
alter table profiles
  add column if not exists latin_power_cache int not null default 0;

-- ── Drills table ──────────────────────────────────────────────────
create table if not exists drills (
  id            bigint generated always as identity primary key,
  type          text not null,
  lp_multiplier float not null default 1.0,
  session_tag   text,
  content       jsonb not null,
  created_at    timestamptz default now()
);

-- ── User mastery table ────────────────────────────────────────────
create table if not exists user_mastery (
  id            bigint generated always as identity primary key,
  user_id       uuid references profiles(id) on delete cascade not null,
  drill_id      bigint references drills(id) on delete cascade not null,
  streak        int not null default 0,
  ease_factor   float not null default 2.5,
  interval_days int not null default 1,
  last_reviewed timestamptz,
  next_due      timestamptz,
  unique(user_id, drill_id)
);

-- ── LP events table ───────────────────────────────────────────────
create table if not exists lp_events (
  id          bigint generated always as identity primary key,
  user_id     uuid references profiles(id) on delete cascade not null,
  drill_id    bigint references drills(id) on delete set null,
  score_id    bigint references scores(id) on delete set null,
  lp_delta    float not null,
  reason      text,
  created_at  timestamptz default now()
);

-- ── Add drill_id to scores ────────────────────────────────────────
alter table scores
  add column if not exists drill_id bigint references drills(id) on delete set null;

-- ── Row Level Security ────────────────────────────────────────────
alter table drills enable row level security;
alter table user_mastery enable row level security;
alter table lp_events enable row level security;

-- Drills are readable by everyone (including logged-out users)
create policy "Drills are public"
  on drills for select
  using (true);

-- Users manage their own mastery records
create policy "Users can view own mastery"
  on user_mastery for select
  to authenticated
  using (auth.uid() = user_id);

create policy "Users can insert own mastery"
  on user_mastery for insert
  to authenticated
  with check (auth.uid() = user_id);

create policy "Users can update own mastery"
  on user_mastery for update
  to authenticated
  using (auth.uid() = user_id);

-- Users can view their own LP events
create policy "Users can view own lp events"
  on lp_events for select
  to authenticated
  using (auth.uid() = user_id);

create policy "Users can insert own lp events"
  on lp_events for insert
  to authenticated
  with check (auth.uid() = user_id);

-- Educators can view all mastery and LP data
create policy "Educators can view all mastery"
  on user_mastery for select
  to authenticated
  using (
    auth.uid() = user_id
    or (select role from profiles where id = auth.uid()) = 'educator'
  );

create policy "Educators can view all lp events"
  on lp_events for select
  to authenticated
  using (
    auth.uid() = user_id
    or (select role from profiles where id = auth.uid()) = 'educator'
  );

-- ── Grants ───────────────────────────────────────────────────────
grant select on public.drills to anon;
grant select on public.drills to authenticated;
grant select, insert, update on public.user_mastery to authenticated;
grant select, insert on public.lp_events to authenticated;