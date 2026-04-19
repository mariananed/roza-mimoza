-- Изпълни това в Supabase → SQL Editor → New query → Run
-- Добавя колона за индивидуални цени по размер

alter table products
  add column if not exists size_prices jsonb default null;

-- Пример как се записват цените:
-- {"5cm": 0.80, "4cm": 0.65, "3cm": 0.55, "pupka": 0.45}
-- {"listo": 0.35, "klonche": 0.60}
