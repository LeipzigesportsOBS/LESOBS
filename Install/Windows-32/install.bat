@echo off
wget\wget.exe -O obs.zip https://github.com/jp9000/obs-studio/releases/download/20.0.1/OBS-Studio-20.0.1-Full.zip
unzip\bin\unzip.exe obs.zip
rm obs.zip
wget\wget.exe -O git.7z.exe https://github.com/git-for-windows/git/releases/download/v2.14.1.windows.1/PortableGit-2.14.1-32-bit.7z.exe 
echo Bitte den Anweisungen des sich oeffnenden Programms folgen und im aktuellen Ordner entpacken!
timeout /t 5
start /max /wait git.7z.exe
rm git.7z.exe
start /wait "" "PortableGit/bin/sh.exe" -c "git clone https://github.com/LeipzigesportsOBS/LESOBS/ tmp && mv tmp/.git . && rm -rf tmp && git reset --hard"
echo die Installation ist abgeschlossen!
rmdir /S wget
rmdir /S unzip
pause
start StartOBS32Bit.bat
echo del %%~dpnx0 ^>nul>%temp%\CleanUp.Bat 
04.
%temp%\cleanup.Bat