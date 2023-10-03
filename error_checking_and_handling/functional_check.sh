#!/bin/bash

######################################
# Author: Abraham Ayamigah
# Version: v1.0.0
# Date: 29th September, 2023
# Description:  functional checks
# Usage: ./functional_checks.sh
######################################

# create a directory
mkdir /tmp/tmp_dir/
mkdir_rc=$?

# test for directory
test -d /tmp/tmp_dir
test_rc=$?

echo "mktemp return ${mktemp_rc}, while mkdir returned ${mkdir_rc}"


