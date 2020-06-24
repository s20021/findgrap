#!/bin/bash

pattern=$1
directory=$2
if [ -z "$directory" ]; then
	directory='.'
fi

# -n : print line number
# -H : print the file name
find . -type f -print0 | xargs -0 grep -nH "$pattern"
