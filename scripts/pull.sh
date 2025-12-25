#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

PRO_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"

PROJECT_DIR="$PRO_DIR/UnixProject"

rm -rf "$PROJECT_DIR"

echo "Cloning fresh repository ..."
git clone https://github.com/jolenarhasan/UnixProject.git "$PROJECT_DIR"

cd "$PROJECT_DIR" || { echo "Failed to enter project directory"; exit 1; }

echo "Project is ready at $PROJECT_DIR"
