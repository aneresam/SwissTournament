# SwissTournament

This library provides a list of functions that can be used to plan and keep track of players and matches in a game tournament (no elimation, Swiss-system, https://en.wikipedia.org/wiki/Swiss-system_tournament). 

It uses PostgreSQL database to store player and matches information. 

In V1:
Simple design, only store player and matches info. Meet basic requirments.

In V2 (To do):
Handle odd number of players by adding "bye" concept.
Support games where a draw (tied game) is possible.
Support muiltple tournaments.

## Usage
Prerequisites: 
PostgreSQL is installed.

1. run psql and connect to PostgreSQL
2. Use the command \i tournament.sql in psql to run a list of sql to create database, tables and views.
3. Sample usage and test are listed in tournament_test.py. You can run it using command "python tournament_test.py" 