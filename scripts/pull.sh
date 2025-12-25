#!/bin/bash

# المسار المطلق للسكريبت نفسه
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$SCRIPT_DIR/../../UnixProject"

echo "Removing existing project..."
rm -rf "$PROJECT_DIR"

echo "Cloning fresh repository..."
git clone https://github.com/jolenarhasan/UnixProject.git "$PROJECT_DIR"
cd "$PROJECT_DIR" || exit
