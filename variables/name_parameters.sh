#!/bin/bash

firstname=${1}
secondname=${2}
name=$(( ${firstname} + ${secondname} ))

echo "There was a boy named ${name}. ${name} enjoyed Linux and bash so much that he wrote a book about it."

