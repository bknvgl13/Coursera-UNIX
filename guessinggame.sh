#!/usr/bin/env bash


function guess_file {
	num=$(-type f| wc -l)
	echo "Enter your guess for number:"
	read guess
	if [[ $guess -eq num ]]
	then
	echo "Guessed!"
		else
		if [[ $guess -gt num ]]
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
