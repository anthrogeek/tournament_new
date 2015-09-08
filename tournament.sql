-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

--Deletes the database if it exists so we can rerun the script if we need to.
DROP DATABASE IF EXISTS tournament;

--Creates the tournament database where the tables and views will be stored.
CREATE DATABASE tournament;

\c tournament;

--Sets up the players table.
CREATE TABLE players (
	id SERIAL primary key, name TEXT
);

--Sets up the matches table that references the players' id for winners and losers.
CREATE TABLE matches (
	id SERIAL primary key, 
	winner INTEGER REFERENCES players (id), 
	loser INTEGER REFERENCES players (id)
);

--Creates the view that pulls in the player wins and all matches performed.

CREATE VIEW standings as 
SELECT players.id, 
       name, 
       (SELECT count(*) FROM matches WHERE players.id = matches.winner) AS wins,
       (SELECT count(*) FROM matches WHERE players.id = matches.winner OR players.id = matches.loser) AS matches
FROM players left join matches on players.id = matches.winner
ORDER BY wins DESC;



