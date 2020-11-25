#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_file {

	echo "Enter your guess for number:"
	read guess
	if [[$guess -eq $filenum]]
	then 
	echo "Guessed!"
	for f in $(ls)
		do
			echo "  - $f and "
		done
		else
		if [[ $guess -gt $filenum ]]
		then
			echo "Too less, press Enter:"
			guess_filenum
		else
			echo "Too much, press Enter:"
			guess_filenum
		fi
	fi
	}
	
	echo "Guess how many files are in the current directory and press Enter :"
	guess_file 