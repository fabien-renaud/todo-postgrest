create schema todo_api;

create table todo_api.todo (
  id serial primary key,
  done boolean not null default false,
  task text not null,
  due timestamptz
);

insert into todo_api.todo (task) values
  ('finish tutorial 0'), ('pat self on back');
