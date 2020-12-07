#!/usr/bin/env bash

#Algorithm: first, the number of files in the directory is calculated, then the expected number is entered. 
#Then there is a comparison. The program ends when the user guesses the number correctly.

num=$(ls | wc -l)

function guess_file {
	echo "Enter your guess for the number of files in directory:"
	read guess
	while [[ $guess -ne num ]] 
	do 
	if [[ $guess -gt num ]]
		then
			echo "Too much, press Enter:"
			read guess
		elif [[ $guess -lt num ]] 
		     then
			echo "Too less, press Enter:"
			read guess
		fi
	done
	}
	
	echo "Guess how many files are in the current directory:"
	guess_file 
	echo "Guessed!"
