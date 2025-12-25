#!/bin/bash
echo "hello"
echo "hello"

if [ -z "$1" ]; 
    then
        COMMIT_MESSAGE="Auto commit by script $(date '+%Y-%m-%d %H:%M:%S')"
    else
        COMMIT_MESSAGE="$1"
fi

if [ ! -d ".git" ]; 
    then
        echo "Initializing git repository..."
       
fi
 git init
 git branch -m main
  git remote add origin git@github.com:jolenarhasan/UnixProject.git
git add .
git commit -m "$COMMIT_MESSAGE"

git push origin main -u
