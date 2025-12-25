#!/bin/bash


SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"


PRO_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
PROJECT_DIR="$PRO_DIR/UnixProject"


cd "$PRO_DIR" || { echo "Failed to enter PRO directory"; exit 1; }

echo "Project exists. Pulling latest changes..."
cd "$PROJECT_DIR" || { echo "Failed to enter project directory"; exit 1; }
git reset --hard          
git clean -fd 
git pull

echo "Project is up to date at $PROJECT_DIR"
