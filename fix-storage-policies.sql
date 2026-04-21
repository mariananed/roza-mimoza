-- ═══════════════════════════════════════════════════════
-- Изпълни това в Supabase → SQL Editor → New query → Run
-- Оправя политиките за качване на снимки
-- ═══════════════════════════════════════════════════════

-- 1. Създай bucket ако не съществува
insert into storage.buckets (id, name, public)
values ('product-images', 'product-images', true)
on conflict (id) do update set public = true;

-- 2. Изтрий старите политики ако съществуват
drop policy if exists "Публично четене на снимки" on storage.objects;
drop policy if exists "Анонимен качва снимки" on storage.objects;
drop policy if exists "Анонимен изтрива снимки" on storage.objects;
drop policy if exists "Анонимен обновява снимки" on storage.objects;

-- 3. Създай нови политики
-- Всеки може да чете (за магазина)
create policy "Публично четене на снимки"
  on storage.objects for select
  using (bucket_id = 'product-images');

-- Анонимен може да качва (за админ панела)
create policy "Анонимен качва снимки"
  on storage.objects for insert
  with check (bucket_id = 'product-images');

-- Анонимен може да обновява
create policy "Анонимен обновява снимки"
  on storage.objects for update
  using (bucket_id = 'product-images');

-- Анонимен може да изтрива
create policy "Анонимен изтрива снимки"
  on storage.objects for delete
  using (bucket_id = 'product-images');

-- ═══════════════════════════════════════════════════════
-- След изпълнение провери в Storage → product-images
-- дали bucket-ът е публичен (зелена икона)
-- ═══════════════════════════════════════════════════════
