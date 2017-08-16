@echo off
set /p szene=Bitte namen der Szene eingeben (Leerzeichen durch _ ersetzen!): 
set szene=%szene%.json
set /p branch=Bitte deinen Namen und Spiel eingeben (Ohne Leerzeichen!):  
start "../" /D "../" "../PortableGit/bin/sh.exe" -c "git stash && git checkout -b %branch% && git stash pop && git add . &&  git commit -m 'MeineSzene' config/obs-studio/basic/scenes/%szene% && git push --set-upstream origin %branch% && git checkout master"
pause
