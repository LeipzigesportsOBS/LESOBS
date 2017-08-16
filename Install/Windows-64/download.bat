::wget\wget.exe -O obs.zip https://github.com/jp9000/obs-studio/releases/download/20.0.1/OBS-Studio-20.0.1-Full.zip
::unzip\bin\unzip.exe obs.zip
wget\wget.exe -O git.7z.exe https://github.com/git-for-windows/git/releases/download/v2.14.1.windows.1/PortableGit-2.14.1-64-bit.7z.exe
echo Bitte den Anweisungen des sich öffnenden Programms folgen und im aktuellen Ordner entpacken!
timeout /t 5
start git.7z.exe