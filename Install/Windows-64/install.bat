@echo off
echo ------------------------------------------------------------------------------------------------
echo  Download & Entpacken der OBS Binaries
echo ------------------------------------------------------------------------------------------------
echo
timeout /t 3
wget\wget.exe -O obs.zip https://github.com/jp9000/obs-studio/releases/download/20.0.1/OBS-Studio-20.0.1-Full.zip
unzip\bin\unzip.exe obs.zip
rm obs.zip
echo
echo ------------------------------------------------------------------------------------------------
echo  Download der GIT Binaries
echo ------------------------------------------------------------------------------------------------
echo
timeout /t 3
wget\wget.exe -O git.7z.exe https://github.com/git-for-windows/git/releases/download/v2.14.1.windows.1/PortableGit-2.14.1-64-bit.7z.exe
echo
echo ------------------------------------------------------------------------------------------------
echo  Bitte den Anweisungen des sich oeffnenden Programms folgen und im aktuellen Ordner entpacken!
echo ------------------------------------------------------------------------------------------------
echo
timeout /t 5
start /max /wait git.7z.exe
rm git.7z.exe
echo
echo ------------------------------------------------------------------------------------------------
echo  Overlay wird nun heruntergeladen und Installiert!
echo ------------------------------------------------------------------------------------------------
echo
timeout /t 3
start /wait "" "PortableGit/bin/sh.exe" -c "git clone https://github.com/LeipzigesportsOBS/LESOBS/ tmp && mv tmp/.git . && rm -rf tmp && git reset --hard"
echo 
echo ------------------------------------------------------------------------------------------------
echo  Im naechsten Schrit werden die benoetigten Schriftarten installiert                        
echo  In den  4 oeffneden Fenstern bitte Installieren klicken und diese im Anschluss schliessen      
echo ------------------------------------------------------------------------------------------------
echo
timeout /t 8
cd fonts
start "" /wait installfont.bat
cd ..
echo 
echo ------------------------------------------------------------------------------------------------
echo  die Installation ist abgeschlossen!
echo  OBS wird in kürze gestartet!
echo  fuer schnellen Zugrif eine Verknuepfung zur StartOBS64Bit.bat manuell anlegen!
echo ------------------------------------------------------------------------------------------------
echo
rmdir /S wget
rmdir /S unzip
rmdir /S fonts
pause
start StartOBS64Bit.bat
echo del %%~dpnx0 ^>nul>%temp%\CleanUp.Bat 
04.
%temp%\cleanup.Bat