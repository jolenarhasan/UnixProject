#!/bin/bash

SCRIPT_DIR="$(dirname "$0")"
PROJECT_DIR="$SCRIPT_DIR/../../UnixProject"

echo "Removing existing project..."
rm -rf "$PROJECT_DIR"

echo "Cloning fresh repository..."
git clone https://github.com/jolenarhasan/UnixProject.git "$PROJECT_DIR"
cd "$PROJECT_DIR"
