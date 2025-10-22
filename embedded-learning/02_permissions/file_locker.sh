#!/bin/bash

echo "script name: $0"

#check if user gave file name -> if the $1 string is empty then it will enter this if cond
if [ -z "$1" ]; then
	echo "Error no file specified"
	exit 1
fi

echo "file to lock: $1"

#lets move to actual locking part
chmod 600 $1
echo "File lock succesful"
