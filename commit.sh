#!/bin/bash
set -e

REPO_DIR="/Users/lychees/dev-log"
cd "$REPO_DIR"

# Append today's entry
DATE=$(date "+%Y-%m-%d")
TIME=$(date "+%H:%M")
echo "- $DATE $TIME" >> log.md

# Commit and push
git add log.md
git commit -m "log: $DATE"
git push origin main
