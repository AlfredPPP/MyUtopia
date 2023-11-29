#!/bin/bash

PROJECT_DIR=""  # Replace with your actual project directory path

REPO_URL="https://github.com/AlfredPPP/MyUtopia.git" 

cd "$PROJECT_DIR" || { echo "Failed to enter project directory"; exit 1; }

git add . || { echo "Failed to add changes"; exit 1; }

echo "Enter commit message: "

read -r commit_message

git commit -m "$commit_message" || { echo "Failed to commit changes"; exit 1; }

git push "$REPO_URL" main || { echo "Failed to push to repository"; exit 1; }

echo "Changes pushed to GitHub successfully."

