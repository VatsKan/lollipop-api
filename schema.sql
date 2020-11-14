BEGIN;

CREATE TABLE admin (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(225) NOT NULL
);

CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  name VARCHAR(225) NOT NULL UNIQUE,
  size INTEGER NOT NULL,
  admin_id INTEGER NOT NULL REFERENCES admin(id)
);

CREATE TABLE members (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(225) NOT NULL,
  last_name VARCHAR(225) NOT NULL,
  team_id INTEGER NOT NULL REFERENCES teams(id)
);

CREATE TABLE scenarios (
  id SERIAL PRIMARY KEY,
  name VARCHAR(225) NOT NULL,
  team_id INTEGER NOT NULL REFERENCES teams(id)
);

CREATE TABLE team_member_scenario (
  id SERIAL PRIMARY KEY,
  team_id INTEGER NOT NULL REFERENCES teams(id),
  member_id INTEGER NOT NULL REFERENCES members(id),
  scenario_id  INTEGER NOT NULL REFERENCES scenarios(id)
);
-- need to create a join table instead?

CREATE TABLE history (
  id SERIAL PRIMARY KEY,
  time_last_selected_utc VARCHAR(225) NOT NULL,
  team_member_scenario_id INTEGER NOT NULL REFERENCES team_member_scenario(id)
);

CREATE TABLE lollipop_stack (
  id SERIAL PRIMARY KEY,
  team_member_scenario_id INTEGER NOT NULL REFERENCES team_member_scenario(id)
);

COMMIT;