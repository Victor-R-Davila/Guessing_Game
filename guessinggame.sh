#!/usr/bin/env bash
#guessinggame.sh
# This is a game in which you guess the number of files in a directory.

echo "We are going to play a guessing game."

function gettheguess {
echo "Guess the number of files there are in the current directory: "
read guess
}

gettheguess

files=$(pwd | ls | wc -l) 
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

echo "You got it!! $guess is the number of files in the directory."