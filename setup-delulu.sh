#!/bin/bash

# Ask for your GitHub repo URL
read -p "https://github.com/satekge-khutjo/be_delulu-site" REPO_URL

# Set up folder
mkdir -p ~/Desktop/DEV/delulu-site
cd ~/Desktop/DEV/delulu-site

# Create basic files
echo "<!DOCTYPE html>
<html>
<head>
  <title>Delulu</title>
  <link rel='stylesheet' href='style.css'>
</head>
<body>
  <h1>Welcome to Delulu</h1>
  <script src='script.js'></script>
</body>
</html>" > index.html

echo "/* Delulu styles */" > style.css
echo "// Delulu script" > script.js

# Initialize Git and push to GitHub
git init
git remote add origin "$REPO_URL"
git add .
git commit -m "Initial commit - Delulu site setup"
git branch -M main
git push -u origin main

echo "✅ Delulu project initialized and pushed to GitHub!"
