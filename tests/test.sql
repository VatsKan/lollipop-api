BEGIN;

INSERT INTO users (email, password) VALUES
  ('jimmyface@gmail.com', 'jimmyface'),
  ('admin@lollipop.com', 'secretadmin')
;

INSERT INTO teams (name, size, admin_id) VALUES
  ('FAC20', 7, 1),
  ('FAC19', 6, 1)
;

INSERT INTO members (first_name, last_name, team_id) VALUES
  ('Shaya', NULL, 1),
  ('Amber', NULL, 1),
  ('Azizi', NULL, 1),
  ('Josh', NULL, 1),
  ('My Hoa', NULL, 1),
  ('Terrence', NULL, 1),
  ('Terry', NULL, 1),
  ('Hannah', NULL, 2),
  ('Jack', NULL, 2),
  ('Joe', NULL, 2),
  ('Vatsal', NULL, 2),
  ('Kat', NULL, 2),
  ('Chloe', NULL, 2)
;

INSERT INTO scenarios (name, team_id) VALUES
  ('check-in', 1),
  ('check-in', 2),
  ('Workshop Solutions', 1),
  ('Workshop Solutions', 2)
;

SET timezone='+00:00';

INSERT INTO history (time_last_selected_utc, team_id, member_id, scenario_id) VALUES 
  ('2021-01-01 00:00:01', 1, 1, 1),
  ('2021-01-01 00:00:01', 2, 2, 1),
  ('2021-01-01 00:00:01', 1, 3, 2),
  ('2021-01-01 00:00:01', 2, 4, 2),
  ('2021-01-01 00:00:01', 1, 5, 1),
  ('2021-01-01 00:00:01', 2, 6, 1),
  ('2021-01-01 00:00:01', 1, 7, 2),
  ('2021-01-01 00:00:01', 2, 8, 2)
;

COMMIT;