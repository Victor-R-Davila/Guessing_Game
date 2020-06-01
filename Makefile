README.md:
	@echo "# This is a peer graded assignment for a UNIX course on coursera:" > README.md
	@echo "## Bash, Make, Git, and GitHub" >> README.md
	@echo "The program should contain one function, one loop, and one if statement." >> README.md  
	@echo "It should also be more than 20 lines of code but less than 50 lines of code." >> README.md
	@echo "The number of line of code in this program are:" >> README.md
	@wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	@date "+Date: %Y-%m-%d, Time: %H:%M:%S%n" >> README.md

Clean:
	rm README.md