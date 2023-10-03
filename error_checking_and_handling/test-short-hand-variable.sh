#!/bin/bash

######################################
# Author: Abraham Ayamigah
# Version: v1.0.0
# Date: 29th September, 2023
# Description: running tests with shorthand
# Usage: ./test-short-hand-varible.sh
######################################

# test for the variable directory
DIRECTORY="./variable"
test -d ${DIRECTORY}
test_rc=$?

# test using short hand
[ -d ${DIRECTORY} ]	# fails when path has whitespaces
simple_rc=$?

# test using extended shorthand
[[ -d ${DIRECTORY} ]]	#works when path has white spaces
extended_rc=$?

# print 
echo "The return codes are: ${test_rc}, ${simple_rc}, ${extended_rc}"


