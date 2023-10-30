#!/bin/bash

##########################################
# Author: Abraham Ayamigah
# Date: 30th October, 2023
# Description: Prints or lists the given path, 
# 		depending on the type
# Usage: ./nested-print-or-list.sh <file or directory path>
##########################################

#  Setting the current directory
cd $(dirname $0)

# input validation
if [[ $# -ne 1 ]]; then
	echo "Incorrect usage"
	echo "Usage: $0 <file or directory path>"
	exit 1
fi


input_path = $1

# check if file/directory can be read
if [[ -r ${input_path} ]]; then
	# check path type and display contents
	if [[ -f ${input_path} ]]; then
		echo "File found, showing contents........"
		cat ${input_path}
	elif [[ -d ${input_path} ]] then
		echo "Directory found, listing contents........"
		ls -l ${input_path}
	else
		"Pth is neither a file mor a directory, exiting script."
	exit 1
	fi
else
	echo "Cannot read the file/directoty. exiting script"
	exit 1
fi

 
