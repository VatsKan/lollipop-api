BEGIN;

DROP TABLE IF EXISTS teams, admin, members, scenarios, history CASCADE;

CREATE TABLE admin (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
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
  last_name VARCHAR(225),
  team_id INTEGER NOT NULL REFERENCES teams(id)
);

CREATE TABLE scenarios (
  id SERIAL PRIMARY KEY,
  name VARCHAR(225) NOT NULL,
  team_id INTEGER NOT NULL REFERENCES teams(id),
  time_scenario_created_utc timestamp NOT NULL DEFAULT NOW()
);

CREATE TABLE history (
  id SERIAL PRIMARY KEY,
  time_last_selected_utc timestamp NOT NULL,
  team_id INTEGER NOT NULL REFERENCES teams(id),
  member_id INTEGER NOT NULL REFERENCES members(id),
  scenario_id INTEGER NOT NULL REFERENCES scenarios(id)
);

COMMIT;