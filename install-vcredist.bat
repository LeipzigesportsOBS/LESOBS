@echo off
echo ------------------------------------------------------------------------------------------------
echo  Download VCRedist
echo ------------------------------------------------------------------------------------------------
wget\wget.exe -O vcredist.exe http://download.microsoft.com/download/0/5/6/056dcda9-d667-4e27-8001-8a0c6971d6b1/vcredist_x86.exe
echo ------------------------------------------------------------------------------------------------
echo  Installation VCRedist!
echo  Bitte Installer Ausführen! 
echo  Im anschluss setzt das Script fort!
echo ------------------------------------------------------------------------------------------------
timeout /t 10
start /wait vcredist.exe
rm vcredist.exe