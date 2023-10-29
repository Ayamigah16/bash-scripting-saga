#!/bin/bash

###################################
# Author: Abraham Ayamigah
# Date: 29th October, 2023
# Description: Use the if-then-else construct
# 		to check if a file exist
# Usage: ./if-then-else-proper <filename>
###################################

filename=$1

# check if file exist
if [[ -f ${filename} ]]; then
	cat ${filename}		# print file content
else
	echo "File doesn't exist"
	exit 1
fi

