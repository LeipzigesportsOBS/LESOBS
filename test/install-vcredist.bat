@echo off
echo ------------------------------------------------------------------------------------------------
echo  Download VCRedist
echo ------------------------------------------------------------------------------------------------
wget\wget.exe -O vcredist.exe http://download.microsoft.com/download/8/2/4/82444f1c-aea4-4153-81c2-7861905d54f5/vcredist_x64.exe
echo ------------------------------------------------------------------------------------------------
echo  Installation VCRedist!
echo  Bitte Installer Ausführen! 
echo  Im anschluss setzt das Script fort!
echo ------------------------------------------------------------------------------------------------
timeout /t 10
start /wait vcredist.exe
rm vcredist.exe