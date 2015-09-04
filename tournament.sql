-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE DATABASE tournament;

\c tournament;





CREATE TABLE players (id SERIAL primary key, name TEXT);

CREATE TABLE matches (id SERIAL primary key, winner INTEGER REFERENCES players (id), 
	loser INTEGER REFERENCES players (id));

CREATE VIEW standings as 
SELECT players.id, 
       name, 
       (SELECT count(*) FROM matches WHERE players.id = matches.winner) AS wins,
       (SELECT count(*) FROM matches WHERE players.id = matches.winner OR players.id = matches.loser) AS matches
FROM players left join matches on players.id = matches.winner;



