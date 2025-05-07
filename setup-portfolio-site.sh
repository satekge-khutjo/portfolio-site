#!/bin/bash

# Ask for your GitHub repo URL
read -p "https://github.com/satekge-khutjo/portfolio-site" REPO_URL

# Set up folder
mkdir -p ~/Desktop/DEV/portfolio-site
cd ~/Desktop/DEV/portfolio-site

# Create basic files
echo "<!DOCTYPE html>
<html>
<head>
  <title>Delulu</title>
  <link rel='stylesheet' href='style.css'>
</head>
<body>
  <h1>Welcome to My profile</h1>
  <script src='script.js'></script>
</body>
</html>" > index.html

echo "/* profile styles */" > style.css
echo "// profile script" > script.js

# Initialize Git and push to GitHub
git init
git remote add origin "$REPO_URL"
git add .
git commit -m "Initial commit - profile site setup"
git branch -M main
git push -u origin main

echo "✅ profolio project initialized and pushed to GitHub!"
