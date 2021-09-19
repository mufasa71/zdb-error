create extension if not exists zombodb;

alter table if exists public.foobar drop constraint if exists foobar_constraint;
