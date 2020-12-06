#!/usr/bin/env bash

#Algorithm: first, the number of files in the directory is calculated, then the expected number is entered. 
#Then there is a comparison. The program ends when the user guesses the number correctly.

function num_file() {
num=$(-type f| wc -l)
}

function guess_file {
	num = $num_file
	echo "Enter your guess for the number of files in directory:"
	read guess
	if [ "$guess" -eq "num" ]; then
	echo "Guessed!" 
		else
		if [[ $guess -gt num ]]
		then
			echo "Too much, press Enter:"
			guess_file
		else if [[ $guess -lt num ]]
			echo "Too less, press Enter:"
			guess_file
		fi
	fi
	}
	
	echo "Guess how many files are in the current directory:"
	guess_file 
