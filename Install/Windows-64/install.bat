@echo off
echo ------------------------------------------------------------------------------------------------
echo  Download und Entpacken der OBS Binaries
echo ------------------------------------------------------------------------------------------------
timeout /t 3
wget\wget.exe -O obs.zip https://github.com/jp9000/obs-studio/releases/download/20.0.1/OBS-Studio-20.0.1-Full.zip
unzip\bin\unzip.exe obs.zip
rm obs.zip
echo ------------------------------------------------------------------------------------------------
echo  Download der GIT Binaries
echo ------------------------------------------------------------------------------------------------
timeout /t 3
wget\wget.exe -O git.7z.exe https://github.com/git-for-windows/git/releases/download/v2.14.1.windows.1/PortableGit-2.14.1-64-bit.7z.exe
echo ------------------------------------------------------------------------------------------------
echo  Bitte den Anweisungen des sich oeffnenden Programms folgen und im aktuellen Ordner entpacken!
echo ------------------------------------------------------------------------------------------------
timeout /t 5
start /max /wait git.7z.exe
rm git.7z.exe
echo ------------------------------------------------------------------------------------------------
echo  Overlay wird nun heruntergeladen und Installiert!
echo ------------------------------------------------------------------------------------------------
timeout /t 3
start /wait "" "PortableGit/bin/sh.exe" -c "git clone https://github.com/LeipzigesportsOBS/LESOBS/ tmp && mv tmp/.git . && rm -rf tmp && git reset --hard"
xcopy /E /H profiles ..\..\config\obs-studio\basic\profiles\
echo ------------------------------------------------------------------------------------------------
echo  Im naechsten Schritt werden die benoetigten Schriftarten installiert                        
echo  In den  4 oeffneden Fenstern bitte Installieren klicken und diese im Anschluss schliessen      
echo ------------------------------------------------------------------------------------------------
timeout /t 8
cd fonts
start "" /wait installfont.bat
cd ..
echo ------------------------------------------------------------------------------------------------
echo  die Installation ist abgeschlossen!
echo  OBS wird in k�rze gestartet!
echo  fuer schnellen Zugrif eine Verknuepfung zur StartOBS64Bit.bat manuell anlegen!
echo ------------------------------------------------------------------------------------------------
rmdir /S /Q wget
rmdir /S /Q unzip
rmdir /S /Q fonts
rmdir /S /Q profiles
timeout /t 10
start StartOBS64Bit.bat
