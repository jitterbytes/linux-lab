********* Objective of the Mini Challenge ************
- create a script "file_locker.sh"
- Take a filename as arguement
- set its permission to 600
- print "File locked successfully"

eg ./file_locker.sh secret.txt

but how will i get the filename -> understanding arguement in Bash

$0 - script name
$1 - first args
$2 - second args
$@ - all args
$# - nos of args
