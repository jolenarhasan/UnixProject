#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PRO_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
PROJECT_DIR="$PRO_DIR/UnixProject"

cd "$PROJECT_DIR" || { echo "Failed to enter project directory"; exit 1; }

git pull origin main

echo "Project is up to date at $PROJECT_DIR"
