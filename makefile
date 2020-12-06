README.md:
	touch README.md
	echo "# Title of the project: __Bash, Make, Git, and GitHub__" > README.md
	echo "###The date of run:" >> README.md
	date >> README.md
	echo "###Number of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh<CR> >> README.md
