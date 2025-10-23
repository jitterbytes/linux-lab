#!/bin/bash

# step 1 show git status
echo "== Git Status Before =="
git status

# step 2 stage all changes
echo "== Adding All Files =="
git add .

# step 3 ask for commit message
read -p "Enter commit message: " msg
git commit -m "$msg"

# step 4 git status after commit
echo "== Git Status After =="
git status

# step 5 Push changes
echo "== Pushing Changes =="
git push

