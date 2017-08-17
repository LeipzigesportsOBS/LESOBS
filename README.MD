Installationsanleitung Windows
------------------------------------

* Herunterladen des Passenden Archivs f�r die verwendete Architektur (32 oder 64 bit)
>[Windows 64 Bit (f�r *FAST* alle empfohlen)](Install/Windows-64.zip)

> [Windows 32 Bit (f�r �ltere Systeme)](Install/Windows-32.zip)
* Entpacken des Archivs im gew�nschten Zielordner (z.B. C:/LES-OBS)
* Starten von install.bat (Idealerweise als Administrator) und Befolgen der Bildschirmanweisungen
* Nach durchlaufen der install.bat sollte OBS automatisch starten
* Erscheint hier die Fehlermeldung:
>MSVCP120.dll nicht gefundden
Bitte zus�tzlich die install-vcredist.bat ausf�hren und den Bildschirmanweisungen folgen.
* Um OBS in zukunft schnell Starten zu k�nnen erstellt Euch eine Verkn�pfung zu der StartOBS64Bit.bat bzw. StartOBS32Bit.bat auf Eurem Desktop

Einrichtung des Streamkeys
----------------------------------------

* Die Entcoding Einstellung sind schon voreingestellt und ihr m�sst nur noch Euren Streamkey hinzuf�gen 
* Geht in OBS auf Profil -> LESA und dann im Hauptfenster auf Einstellungen -> Stream. Hier f�gt ihr Euren pers�nlichen Streamkey ein
* Analog macht ihr das f�r den LESB, solltet ihr auch einen Streamkey f�r den B-Chanel haben

Update des Overlays (Windows)
-----------------------------------------

* Wenn es Updates am Overlay gibt (Neue Sponsoren, neues Design etc.) werdet ihr vom Twitch admin aufgefordert ein Update des Overlays durchzuf�hren
* Hierf�r f�rht ihr einfach die updateOverlay.bat im Hauptverzeichniss aus

Vorschlagen eigener Szenen f�r bestimmte Spiele (Windows)
-------------------------------------------------------------

* Ihr habt eine eigene Szene f�r ein bestimmtes Spiel erstellt und m�chtest diese f�r alle zur Verf�gungstellen?
* Erstellt ganz normal im OBS eure Szene
* Erstellt euch einen GitHub Account (https://github.com/join?source=login)
* F�hrt bei erster Verwendung die GitEinstellungen.bat im Verzeichniss GitCommands aus
* F�hrt EigeneSzeneVorschlagen.bat im Verzeichniss GitCommands aus und folgt den Bildschirmanweisungen

Alternativ navigiert in den unterordner config/obs-studio/basic/scenes/ und schickt die entsprechende .json Datei per Mail an admin@leipzigesports.de (Hier wird die bearbeitungszeit definitiv l�nger sein ;) )

Importieren einer eigenen Szene aus dem alten LES-Overlay (Windows)
----------------------------------------------------------------

* Beendet OBS
* Navigiert in euren AppData ordner (C:/Benutzer/EUER BENUTZERNAME/AppData/obs-studio/basic/scenes/) und kopiert die .json datei in den Neuen Installations-Ordner unter config/obs-studio/basic/scenes/
** PRO Tipp 1: Versteckte Dateien und Ordner einblenden
** PRO Tipp 2: einfach %AppData%/obs-studio/basic/scenes in der adresszeile des Dateiexplorers eingeben