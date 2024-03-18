#! /bin/bash
# We are using Bash to run the file -> this must have executable file permissions in the repository

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# Detele rows in tables before running the script
echo $($PSQL "TRUNCATE TABLE games, teams")
#loop through games.csv and insert team names into teams table in database
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then  
    # Get ID of winner and opponent
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    # If no WINNER_ID was found then add new team
    if [[ -z $WINNER_ID ]]
      then

        # Add unique team to teams table
        # We have two tables -> the teams table and the games table 

        INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
        WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi
    # If no OPPONENT_ID was found then add new team
    if [[ -z $OPPONENT_ID ]]
      then
        # These are the SQL commands which we obtain from the project psql prompt 
        INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
        OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi
    INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);")
  fi
done