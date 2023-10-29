#!/bin/bash

######################################
# Author: Abraham Ayamigah
# Version: v1.0.0
# Date: 29th September, 2023
# Description: create file the contents given
# Usage: ./file-creat.sh <directroy_name> <file_name> <file_content>
######################################

# check if three arguments were passed
if [[ $# -ne 3 ]]; then
	echo "Incorrect usage"
	echo "Usage: $0 <directory_name> <file_name> <file_content>"
	exit 1
fi

# store aguments
directory_name=${1}
file_name=${2}
file_content=${3}

# create absolute path
absolute_file_path=${directory_name}/${file_name}

# check if file exist
if [[ ! -f ${absolute_file_path} ]]; then
	touch ${absolute_file_path} || { echo "Cannot create file";
       	exit 1; }
fi

# pass content to file
echo ${file_content} > ${absolute_file_path}

