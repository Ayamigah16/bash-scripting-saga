#!/bin/bash

######################################
# Author: Abraham Ayamigah
# Version: v1.0.0
# Date: 29th September, 2023
# Description: Show the capabilities of interactive shell
# Usage: ./interactive.sh
######################################

# prompt user for info
echo -n  "What is your name? :  "
read name
echo -n "How old are you? : "
read age

echo "${name} is ${age} years old."

