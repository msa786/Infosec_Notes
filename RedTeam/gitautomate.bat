@echo off
:: Add all files to the staging area
git add .

:: Ask for the commit message
set /p commit_message="Enter your commit message: "

:: Commit the changes with the provided message
git commit -m "%commit_message%"

:: Push the changes to the remote repository
git push

:: Pause to keep the window open so you can see the result
pause
