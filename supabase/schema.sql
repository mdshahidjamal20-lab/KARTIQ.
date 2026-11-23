-- Run this in the Supabase SQL Editor only after creating your project.
-- Enable RLS before connecting any public storefront or admin UI.
create table if not exists public.products (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  category text not null,
  description text,
  price integer not null check (price >= 0),
  mrp integer,
  image_url text,
  stock integer not null default 0 check (stock >= 0),
  active boolean not null default true,
  created_at timestamptz not null default now()
);
alter table public.products enable row level security;
create policy "Anyone can view active products" on public.products
  for select using (active = true);
-- Do NOT add public insert/update/delete policies.
-- Create authenticated admin roles and server-side authorization before enabling writes.
create table if not exists public.orders (
  id uuid primary key default gen_random_uuid(),
  customer_email text not null,
  total integer not null check (total >= 0),
  status text not null default 'pending',
  payment_reference text,
  created_at timestamptz not null default now()
);
alter table public.orders enable row level security;
-- Add customer/admin policies only after implementing secure authentication.
