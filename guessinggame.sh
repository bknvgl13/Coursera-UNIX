#!/usr/bin/env bash
num=$(ls | wc -l)

function guess_file {

	echo "Enter your guess for number:"
	read guess
	if [[ $guess -eq num ]]
	then
	echo "Guessed!"
		else
		if [[ $guess -gt filenum ]]
		then
			echo "Too much, press Enter:"
			guess_file
		else
			echo "Too less, press Enter:"
			guess_file
		fi
	fi
	}
	
	echo "Guess how many files are in the current directory:"
	guess_file 
