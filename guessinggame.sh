#!/usr/bin/env bash
#guessinggame.sh
# This is a game in which you guess the number of files in a directory.

echo "We are going to play a guessing game."
files=$(pwd | ls | wc -l) 

#Function to obtain the guess from the player
function gettheguess {
	echo "Guess the number of files there are in the current directory: "
	read guess
}

#function to check if the guess from the player is a number or not.
function numberornot {
	if ! [[ "guess" =~ ^[0-9]+$ ]]
   		then
    		echo "Sorry non-negative integers only"
        	gettheguess
     	else
     		checktheguess
	fi
}

#function to check the guess and compare it to the correct number of files.
function checktheguess {

while [[ $guess -ne $files ]]; do
	if [[ $guess -gt $files ]]
	then
		echo "$guess is too high, try again"
		gettheguess
	elif [[ $guess -lt $files ]]
	then
		echo "$guess is too low, try again"
		gettheguess
	fi
done
}
gettheguess
numberornot
checktheguess
echo "You got it!! $guess is the number of files in the directory."