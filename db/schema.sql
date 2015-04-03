DROP TABLE IF EXISTS cells;
DROP TABLE IF EXISTS ships;
DROP TABLE IF EXISTS oceans;

/*#psql -d battleship < schema.sql*/


CREATE TABLE oceans(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  size INTEGER NOT NULL
);

CREATE TABLE ships(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  starting_x INTEGER,
  starting_y INTEGER,
  direction TEXT,
  length INTEGER,
  "sunk?" BOOLEAN,
  ocean_id INTEGER REFERENCES oceans(id)
);

CREATE TABLE cells(
  id SERIAL PRIMARY KEY NOT NULL,
  x INTEGER,
  y INTEGER,
  "ship?" BOOLEAN,
  ships_id INTEGER REFERENCES ships(id),
  "hit?" BOOLEAN,
  ocean_id INTEGER REFERENCES oceans(id)

);
