#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PRO_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
PROJECT_DIR="$PRO_DIR/UnixProject"

cd "$PRO_DIR" || { echo "Failed to enter directory"; exit 1; }

if [ -d "$PROJECT_DIR/.git" ]; then
    echo "Project exists. Pulling latest changes..."
    cd "$PROJECT_DIR" || { echo "Failed to enter project directory"; exit 1; }
    git reset --hard
    git clean -fd
    git pull origin main
else
    echo "Project does not exist. Cloning repository..."
    git clone https://github.com/jolenarhasan/UnixProject.git
    cd "$PROJECT_DIR" || { echo "Failed to enter project directory"; exit 1; }
fi

echo "Project is up to date at $PROJECT_DIR"
