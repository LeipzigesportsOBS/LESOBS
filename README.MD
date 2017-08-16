Installationsanleitung Windows
------------------------------------

* Herunterladen des Passenden Archivs für die verwendete Architektur (32 oder 64 bit)
  >[Windows 64 Bit (für *FAST* alle empfohlen)](Install/Windows-64.zip)
  
  >[Windows 32 Bit (für ältere Systeme)](Install/Windows-32.zip)
* Entpacken des Archivs im gewünschten Zielordner (z.B. C:/LES-OBS)
* Starten von install.bat und Befolgen der Bildschirmanweisungen
* Nach durchlaufen der install.bat sollte OBS automatisch starten
* Um OBS in zukunft schnell Starten zu können erstellt Euch eine Verknüpfung zu der StartOBS64Bit.bat bzw. StartOBS32Bit.bat auf Eurem Desktop

Einrichtung des Streamkeys
----------------------------------------

* Die Entcoding Einstellung sind schon voreingestellt und ihr müsst nur noch Euren Streamkey hinzufügen 
* Geht in OBS auf Profil -> LESA und dann im Hauptfenster auf Einstellungen -> Stream. Hier fügt ihr Euren persönlichen Streamkey ein
* Analog macht ihr das für den LESB, solltet ihr auch einen Streamkey für den B-Chanel haben

Update des Overlays (Windows)
-----------------------------------------

* Wenn es Updates am Overlay gibt (Neue Sponsoren, neues Design etc.) werdet ihr vom Twitch admin aufgefordert ein Update des Overlays durchzuführen
* Hierfür fürht ihr einfach die updateOverlay.bat im Hauptverzeichniss aus

Vorschlagen eigener Szenen für bestimmte Spiele (Windows)
-------------------------------------------------------------

* Ihr habt eine eigene Szene für ein bestimmtes Spiel erstellt und möchtest diese für alle zur Verfügungstellen?
* Erstellt ganz normal im OBS eure Szene
* Erstellt euch einen GitHub Account (https://github.com/join?source=login)
* Führt bei erster Verwendung die GitEinstellungen.bat im Verzeichniss GitCommands aus
* Führt EigeneSzeneVorschlagen.bat im Verzeichniss GitCommands aus und folgt den Bildschirmanweisungen

Alternativ navigiert in den unterordner config/obs-studio/basic/scenes/ und schickt die entsprechende .json Datei per Mail an admin@leipzigesports.de (Hier wird die bearbeitungszeit definitiv länger sein ;) )

Importieren einer eigenen Szene aus dem alten LES-Overlay (Windows)
----------------------------------------------------------------

* Beendet OBS
* Navigiert in euren AppData ordner (C:/Benutzer/EUER BENUTZERNAME/AppData/obs-studio/basic/scenes/) und kopiert die .json datei in den Neuen Installations-Ordner unter config/obs-studio/basic/scenes/
** PRO Tipp 1: Versteckte Dateien und Ordner einblenden
** PRO Tipp 2: einfach %AppData%/obs-studio/basic/scenes in der adresszeile des Dateiexplorers eingeben
