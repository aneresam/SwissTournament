-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- create database
create database tournament;

-- connect to database
\c tournament;

-- creat tables
create table players ( 
	id serial primary key,
	name varchar(40) not null
);

create table matches ( 
	winner integer references players (id),
	loser integer references players (id),
	primary key (winner,loser)
);

-- create views for easy use. 
create view win_score as 
	select winner, count(winner) as wins from matches group by winner;
create view lose_score as 
	select loser, count(loser) as loses from matches group by loser;

create view score as 
	select id, coalesce(wins,0) as wins, coalesce(loses,0) as loses 
	from players left join win_score on id = winner 
		 left join lose_score on id=loser;

