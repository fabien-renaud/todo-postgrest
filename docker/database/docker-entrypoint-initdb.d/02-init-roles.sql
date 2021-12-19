-- Create anonymous role
CREATE ROLE anonymous NOLOGIN;
GRANT USAGE ON SCHEMA todo_api TO anonymous;
GRANT SELECT ON ALL TABLES IN SCHEMA todo_api TO anonymous;

-- Create authenticated role
CREATE ROLE authenticated_user NOLOGIN;
GRANT USAGE ON SCHEMA todo_api TO authenticated_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA todo_api TO authenticated_user;
GRANT USAGE, SELECT ON SEQUENCE todo_api.todo_id_seq TO authenticated_user;

-- Create user authenticator
CREATE ROLE authenticator NOINHERIT LOGIN PASSWORD 'postgres';
GRANT anonymous TO authenticator;
GRANT authenticated_user to authenticator;
