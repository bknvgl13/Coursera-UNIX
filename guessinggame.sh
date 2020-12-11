#!/usr/bin/env bash

#At the beginning, the number of files in the directory is calculated, then the expected number is entered. 
#Further, the programm compare the entered number with the correct one until it is guessed.

digit=$(ls | wc -l)

function forecast_file {
	echo "Enter your guess for the number of files in directory:"
	read forecast
	while [[ $forecast -ne digit ]] 
	do 
	if [[ $forecast -gt digit ]]
		then
			echo "Too big, press Enter:"
			read forecast
		elif [[ $forecast -lt digit ]] 
		     then
			echo "Too small, press Enter:"
			read forecast
		fi
	done
	}
	
	echo "Guess how many files are in the current directory:"
	forecast_file 
	echo "Guessed!"
