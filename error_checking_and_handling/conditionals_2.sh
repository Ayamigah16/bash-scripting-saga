#!/bin/bash

######################################
# Author: Abraham Ayamigah
# Version: v1.0.0
# Date: 29th September, 2023
# Description: create a dirctory and test if created
# Usage: ./conditionals_2.sh <directoy>
######################################

# test for ../variables/hello-world.sh
DIRECTORY=${1}
mkdir ${DIRECTORY}	#create folder
ret_d=$?		#get return result

echo "creating ${DIRECTORY} directory..."
if [[ ret_d -ne 0 ]]; then
	echo "${DIRECTORY} already exit"
	exit 1
fi

echo "done..."
