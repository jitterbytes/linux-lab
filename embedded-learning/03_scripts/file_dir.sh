#!/bin/bash

#create directory
mkdir -p project_logs

#create log files
for i in {1..5}
do
	touch project_logs/log$i.txt
done

echo "Created the following files"
ls -l project_logs

#count the number of files inside the dir
count=$(ls project_logs | wc -l)	# wc -l counts the number of files listed by ls
echo "Total files created: $count"
