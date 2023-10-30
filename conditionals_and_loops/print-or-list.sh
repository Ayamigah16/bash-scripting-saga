#!/bin/bash

#############################################
# Author: Abraham Ayamigah
# Date: 29th October, 2023
# Description: Prints or lists the given path, depending on type
# Usage: ./print-or-list <file or directory path>
#############################################

# setting the current working directory
cd $(dirname $0)

# Input validation
if [[ $# -ne 1 ]]; then
	echo "Incorrect Usage! wrong number of arguments"
	echo "Usage: $0 <file or directory path>"
	exit 1
fi

input_path=$1
if [[ -f ${input_path} ]]; then
	echo "File found; showing contents......"
	cat ${input_path} || { echo "Cannot print file, exiting script!"; exit 1;}
elif [[ -d ${input_path} ]]; then
	echo "Directory found, listing contents......"
	ls -l ${input_path} || { echo "Cannot list directory, exiting script!"; exit 1; }
else
	echo "Path is neither a file nor a directory, exiting script"
	exit 1
fi

