#!/bin/bash

if [ -z "$1" ]; 
    then
        COMMIT_MESSAGE="Auto commit by script $(date '+%Y-%m-%d %H:%M:%S')"
    else
        COMMIT_MESSAGE="$1"
fi

if [ ! -d ".git" ]; 
    then
        echo "Initializing git repository..."
        git init
        git branch -m main
        git remote add origin https://github.com/jolenarhasan/UnixProject.git

fi

git add .
git commit -m "$COMMIT_MESSAGE" || echo "No changes to commit"
git push origin main
