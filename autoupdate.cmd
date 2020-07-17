@echo off
git config --global core.autocrlf false
git config --global user.name "ii6uu99"
git config --global user.email "ii6uu99@163.com"
for /F "delims=?" %%i in ("%cd%") do set folder=%%~nxi
set url=git@github.com:ii6uu99/ruanjian.git

if exist .git (
git add .
git commit -m "Auto Update"
git pull origin master

) else (


git init
git remote add github %url%
git pull origin master
git add .
git commit -m init
)
git push -u origin master 

pause