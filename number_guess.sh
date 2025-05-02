#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=games_played -t --no-align -c"

REMOVE_EMPTY=$($PSQL "DELETE FROM user_data WHERE gamescore IS NULL")

echo "Enter your username:"
read -r USERNAME

DB_USERNAME=$($PSQL "SELECT DISTINCT username FROM user_data WHERE username='$USERNAME'")

if [[ $DB_USERNAME ]]
then

  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM user_data WHERE username='$USERNAME'")
  BEST_SCORE=$($PSQL "SELECT DISTINCT MIN(gamescore) FROM user_data WHERE username='$USERNAME'")
  
  echo  "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_SCORE guesses."
  
  INSERT_NEW_GAME=$($PSQL "INSERT INTO user_data(username) VALUES('$USERNAME')")


else
  
  INSERT_NEW_GAME=$($PSQL "INSERT INTO user_data(username) VALUES('$USERNAME')")
  DB_USERNAME=$($PSQL "SELECT username FROM user_data WHERE username='$USERNAME'")

  echo "Welcome, $USERNAME! It looks like this is your first time here."

fi

TARGET_NUMBER=$((RANDOM % 1000 + 1))
echo $TARGET_NUMBER


CHECK_GUESS () {
    if [[ $1 ]]
    then    
        echo "$1"
        read -r GUESS
    fi
   
    if  ! [[ $GUESS =~ ^[0-9]+$ ]]
    then
        CHECK_GUESS "That is not an integer, guess again:"
    fi    

}


CHECK_GUESS "Guess the secret number between 1 and 1000:"

COUNT=1

while [[ $GUESS -ne $TARGET_NUMBER ]]
do
  ((COUNT+=1))
   
  if [[ $GUESS -gt $TARGET_NUMBER ]]
  then    
    CHECK_GUESS "It's lower than that, guess again:"
  else [[ $GUESS -lt $TARGET_NUMBER ]]
    CHECK_GUESS "It's higher than that, guess again:"
  fi

done



GAME_ID=$($PSQL "SELECT MAX(game_id) FROM user_data WHERE username='$USERNAME'")
UPDATE_TABLE=$($PSQL "UPDATE user_data SET gamescore=$COUNT WHERE game_id=$GAME_ID")

echo "You guessed it in $COUNT tries. The secret number was $TARGET_NUMBER. Nice job!"

