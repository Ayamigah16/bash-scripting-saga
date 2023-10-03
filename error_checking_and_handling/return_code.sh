#!/bin/bash

######################################
# Author: Abraham Ayamigah
# Version: v1.0.0
# Date: 29th September, 2023
# Description: Grabbing a return code
# Usage: ./return_code.sh
######################################

# run a command that works:
mktemp
mktemp_rc=$?

# run a command that fails
mkdir /home/
mkdir_rc=$?

echo "mktemp return ${mktemp_rc}, while mkdir returned ${mkdir_rc}"


