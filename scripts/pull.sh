#!/bin/bash

if [ ! -d ".git" ]; 
    then
        echo "Git repository not initialized. Cloning..."
        git clone git@github.com:jolenarhasan/UnixProject.git .
    else
        echo "Pulling latest changes..."
        git fetch origin
        git reset --hard origin/main
fi
