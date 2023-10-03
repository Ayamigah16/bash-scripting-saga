#!/bin/bash

######################################
# Author: Abraham Ayamigah
# Version: v1.0.0
# Date: 29th September, 2023
# Description: Show the capabilities of interactive shell
# Usage: ./interactive_ultimate.sh <name> <age> <course>
######################################

# get arguments
name=${1}
age=${2}
course=${3}

# promting user for inputs if not given
if test -z ${name}; then echo -n "Enter your name : " read name; fi

if test -z ${age}; then echo -n "Enter your age : " read age; fi

if test -z ${course}; then echo -n "Enter your programme : " read course; fi

echo "${name} completed his ${course} programme at age ${age}.";

