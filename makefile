#!/usr/bin/env/bash
#File: makefile

README.md: guessinggame.sh
	echo "# The Guessing Game" > README.md
	echo "## A Peer-graded Assignment: Bash, Make, Git, and Github" >> README.md
	echo "This README.md file was enirely created using the make file on\
 $(shell date)" >> README.md
	echo "There were $$(wc -l guessinggame.sh | egrep -o [0-9]+) lines of code in the\
 guessinggame.sh file" >> README.md
	echo "This repository contains my project for the Coursera course *The\
 Unix Workbench*" >> README.md


