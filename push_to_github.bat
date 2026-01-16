@echo off
cd /d "c:\Users\rudra\Desktop\RimiWork\GSAP-Awwwards-Website"

set REMOTE_URL=https://github.com/Rudra-744/Coffiz_Project.git

echo Adding remote origin...
git remote add origin %REMOTE_URL%
if errorlevel 1 (
    echo Remote already exists, updating...
    git remote set-url origin %REMOTE_URL%
)

echo Adding all files...
git add .

echo Committing changes...
git commit -m "Initial commit: GSAP Awwwards Website - Coffiz Project"

echo Renaming branch to main...
git branch -M main

echo Pushing to GitHub...
git push -u origin main

echo.
echo Done!
