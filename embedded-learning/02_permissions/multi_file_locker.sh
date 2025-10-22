#!/bin/bash

#check if the user has provided filename

if [ $# -eq 0 ]; then
	echo "Error: No file specified"
	exit 1
fi

#loop through all filenames
for file in "$@"
do
	chmod 600 "$file"
	echo "Locked File: $file"
done
