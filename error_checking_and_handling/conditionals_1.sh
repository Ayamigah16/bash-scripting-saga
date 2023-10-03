#!/bin/bash

######################################
# Author: Abraham Ayamigah
# Version: v1.0.0
# Date: 29th September, 2023
# Description: test for the hello-world.sh file
# Usage: ./conditionals_1.sh
######################################

# test for ../variables/hello-world.sh
file="../variables/hello-world.sh"
echo "Test for ${file}..."

if [[ ! -f ${file} ]]; then
	echo "${file}: File doesn't exit"
	exit 1
fi

# print content if test is succecesful
cat ${file}
echo "...passed"
