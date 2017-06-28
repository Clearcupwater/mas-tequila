#!/bin/bash
#Important to chmod this file as executable so you can run it in bash
echo "Hello please enter the directory you want to do the git init"
read directory
cd "$directory"
#intializes the git file
git init
#adds all existing files to the system
git add .
#commits the following into github
git commit -m "Initial Commit"
#gets a name for a branch
echo "Please provide remote branch name"
read branch
#creates the branch
git branch "$branch"
#creates a name for the remote repository
#must enter the remote reposistory after orgin SH will not work
git remote add origin
git remote -v
#pushes the branch into the cloud
git push origin "$branch"

