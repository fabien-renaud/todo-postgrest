create schema todo_api;

create table todo_api.todos (
  id serial primary key,
  done boolean not null default false,
  task text not null,
  due timestamptz
);

insert into todo_api.todos (task) values
  ('finish tutorial 0'), ('pat self on back');
