@echo off

echo ------------------------------------------------------------------------------------------------
echo  Overlay wird nun heruntergeladen und Installiert!
echo ------------------------------------------------------------------------------------------------
timeout /t 3
start /wait "" "PortableGit/bin/sh.exe" -c "git clone https://github.com/LeipzigesportsOBS/LESOBS/ tmp && mv tmp/.git . && rm -rf tmp && git reset --hard"
mkdir config\obs-studio\basic\profiles
xcopy /E /H /Y profiles config\obs-studio\basic\profiles\
echo ------------------------------------------------------------------------------------------------
echo  Im naechsten Schritt werden die benoetigten Schriftarten installiert                        
echo  In den  4 oeffneden Fenstern bitte Installieren klicken und diese im Anschluss schliessen      
echo ------------------------------------------------------------------------------------------------
timeout /t 15
cd fonts
start "" /wait installfont.bat
cd ..
echo ------------------------------------------------------------------------------------------------
echo  die Installation ist abgeschlossen!
echo  OBS wird in kürze gestartet!
echo  fuer schnellen Zugrif eine Verknuepfung zur StartOBS64Bit.bat manuell anlegen!
echo ------------------------------------------------------------------------------------------------
rmdir /S /Q wget
rmdir /S /Q unzip
rmdir /S /Q fonts
rmdir /S /Q profiles
timeout /t 10
start StartOBS64Bit.bat
