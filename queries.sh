#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

# The syntax of the Bash in this file 
    # -> First, we have an SQL echo command 
    #  -> And then we have the SQL command which outputs the code for it 

# For the total number of goals in all games from winning teams
echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

# For the total number of goals in all games 
echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "SELECT SUM(winner_goals)+SUM(opponent_goals) FROM games;")"

# For the average number of goals in all games from the winning teams
echo -e "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL "SELECT AVG(winner_goals) FROM games;")"

# For the average number of goals in all games from the winning teams rounded to two decimal places
echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "SELECT ROUND(AVG(winner_goals),2) FROM games;")"

# For the average number of goals in all games from both teams
echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "SELECT ROUND(AVG(winner_goals)+AVG(opponent_goals),16) FROM games")"

# For the most goals scored in a single game by one team
echo -e "\nMost goals scored in a single game by one team:"
echo "$($PSQL "SELECT MAX(winner_goals) FROM games;")"

# For the number of games where the winning team scored more than two goals
echo -e "\nNumber of games where the winning team scored more than two goals:"
echo "$($PSQL "SELECT COUNT(*) FROM games WHERE winner_goals>2")"

# For the winner of the 2018 tournament team name
echo -e "\nWinner of the 2018 tournament team name:"
echo "$($PSQL "SELECT name FROM teams FULL JOIN games ON teams.team_id=games.winner_id WHERE year=2018 AND round='Final';")"

# For the list of teams who played in the 2014 'Eighth-Final' round
echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL "SELECT name FROM teams FULL JOIN games ON (teams.team_id=games.opponent_id OR teams.team_id=games.winner_id)  WHERE (round='Eighth-Final' AND year=2014) ORDER BY name")"

# For the list of unique winning team names in the whole data set
echo -e "\nList of unique winning team names in the whole data set:"
echo "$($PSQL "SELECT DISTINCT(name) FROM teams INNER JOIN games ON teams.team_id=games.winner_id ORDER BY name")"

# For the year and team name of all the champions
echo -e "\nYear and team name of all the champions:"
echo  "$($PSQL "SELECT year, name FROM teams FULL JOIN games ON teams.team_id=games.winner_id WHERE round='Final' ORDER BY year")"

# For the list of teams that start with 'Co'
echo -e "\nList of teams that start with 'Co':"
echo "$($PSQL "SELECT name FROM teams WHERE name LIKE 'Co%'")"

