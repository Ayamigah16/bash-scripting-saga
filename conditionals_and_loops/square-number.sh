#!/bin/bash

######################################
# Author: Abraham Ayamigah
# Date: 29th October, 2023
# Description: REurns the square of the input number
# Usage: ./square-number <number>
######################################

NUMBER=$1

# check the number of arguments received is more than 1
if [[ $# -ne 1 ]]; then
	echo "Incorrect usage, wrong number of arguments"
	echo "Usage: $0 <number>"
	exit 1
fi

# check if the input is a number
if [[ ! ${NUMBER} =~ ^[[:digit:]]+$ ]]; then
	echo "Incorrect usage, wrong type of argument"
	echo "Usage: $0 <number>"
	exit 1
fi

# multiplying the number by itself
echo $((${NUMBER} * ${NUMBER}))


