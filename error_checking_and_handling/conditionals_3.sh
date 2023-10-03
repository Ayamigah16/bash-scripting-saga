#!/bin/bash

######################################
# Author: Abraham Ayamigah
# Version: v1.0.0
# Date: 29th September, 2023
# Description: test if a file is present; else create it
# Usage: ./conditionals_3.sh
######################################

# create a file
file=${1}

# check if file exist
if [[ -f ${file} ]]; then
	echo "File already exist"
	cat ${file}
	exit 0
else
	echo "File doesn't exist!"
	echo "creating ${file}..."
	vim ${file}
fi
