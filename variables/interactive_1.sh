#!/bin/bash

######################################
# Author: Abraham Ayamigah
# Version: v1.0.0
# Date: 29th September, 2023
# Description: Show the capabilities of interactive shell
# 		with positional arguments
# Usage: ./interactive.sh <name> <age>
######################################

# initializing variables
name=${1}
age=${2}

echo "${name} graduated as a programmer at age ${age}"

