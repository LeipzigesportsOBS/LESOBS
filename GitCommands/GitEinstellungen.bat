@echo off
set /p name=Bitte Namen  eingeben : 
set /p mail=Bitte E-Mail  eingeben : 

start "Git Initialisierung" /D "../" "../PortableGit/bin/sh.exe" -c "git config --global user.name '%name%' && git config --global user.email %mail%"
pause