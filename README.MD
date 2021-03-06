﻿Installationsanleitung Windows
------------------------------------


* Herunterladen des Archivs
>[Windows 64 Bit (für *FAST* alle empfohlen)](Install/Windows-64.zip)

* Entpacken des Archivs im gewünschten Zielordner (z.B. C:/LES-OBS)
* Starten von install.bat und Befolgen der Bildschirmanweisungen (bitte **nicht** als Administrator ausführen!)
* Nach durchlaufen der install.bat sollte OBS automatisch starten
* Erscheint hier die Fehlermeldung: MSVCP120.dll nicht gefunden. Bitte zusätzlich die install-vcredist.bat ausführen und den Bildschirmanweisungen folgen.
* Um OBS in zukunft schnell Starten zu können erstellt Euch eine Verknüpfung zu der StartOBS64Bit.bat bzw. StartOBS32Bit.bat auf Eurem Desktop


Einrichtung des Streamkeys
----------------------------------------

* Die Encoding Einstellung sind schon voreingestellt und ihr müsst nur noch Euren Streamkey hinzufügen 
* Geht in OBS auf Profil -> LESA und dann im Hauptfenster auf Einstellungen -> Stream. Hier fügt ihr Euren persönlichen Streamkey ein
* Analog macht ihr das für den LESB, solltet ihr auch einen Streamkey für den B-Chanel haben

Hotkeys
----------------------------------------

Folgende Hotkeys sind in allen Szenen gesetzt:

* Umschalten auf Main : STRG + ALT + Numpad 1
* Umschalten auf Ingame : STRG + ALT + Numpad 2
* Umschalten auf Idle : STRG + ALT + Numpad 3
* Microfon ein und aus : STRG + ALT + Numpad 0
> in der Idle szene ist kein Microfon als Quelle hinzugefügt, somit kein Muten notwendig. Wichtig ist das ihr *NICHT* in den OBS Einstellungen euer Micro als ausgabegerät auswählt! Es wird immer das im Windows eingestellte Standart microfon als aufnahmegerät verwendt. Einstellungen zu Filtern (Noisegate usw.) bitte über die Ingame oder Main Szene über die Quelle "Audio Micro" 

* Kamera Ein und Ausschalten : STRG + ALT + Numpad 4
* Musicticker Ein und Auschalten: STRG + ALT + Numpad 5

Anleitung Spezielle Szenen
------------------------------------

* [LoL Observer Overlay](docs/LolObserver.md)


Update des Overlays (Windows)
-----------------------------------------

* Wenn es Updates am Overlay gibt (Neue Sponsoren, neues Design etc.) werdet ihr vom Twitch admin aufgefordert ein Update des Overlays durchzuführen
* Hierfür fürht ihr einfach die updateOverlay.bat im Hauptverzeichniss aus

Vorschlagen eigener Szenen für bestimmte Spiele (Windows)
-------------------------------------------------------------

* Ihr habt eine eigene Szene für ein bestimmtes Spiel erstellt und möchtest diese für alle zur Verfügungstellen?
* Erstellt ganz normal im OBS eure Szene
* Erstellt euch einen GitHub Account (https://github.com/join?source=login)
* Fühhrt bei erster Verwendung die GitEinstellungen.bat im Verzeichniss GitCommands aus
* Führt EigeneSzeneVorschlagen.bat im Verzeichniss GitCommands aus und folgt den Bildschirmanweisungen

Alternativ navigiert in den unterordner config/obs-studio/basic/scenes/ und schickt die entsprechende .json Datei per Mail an admin@leipzigesports.de (Hier wird die bearbeitungszeit definitiv länger sein ;) )

Importieren einer eigenen Szene aus dem alten LES-Overlay (Windows)
----------------------------------------------------------------

* Beendet OBS
* Navigiert in euren AppData ordner (C:/Benutzer/EUER BENUTZERNAME/AppData/obs-studio/basic/scenes/) und kopiert die .json datei in den Neuen Installations-Ordner unter config/obs-studio/basic/scenes/
>PRO Tipp 1: Versteckte Dateien und Ordner einblenden

> PRO Tipp 2: einfach %AppData%/obs-studio/basic/scenes in der adresszeile des Dateiexplorers eingeben

FAQ
---------

> So viele Schwarze Hackerfenster, bin ich jetzt gehackt?

Nein, keine Sorge es handelt sich hier lediglich um ein Script welches viele verschiedene Schritte (Downloads der Binaries und entpacken, Syncronisieren mit dem Git etc.) automatisch durchführt. Etwas anderes macht ein normaler Installer auch nicht. Nur dass eine schöne GUI drüber liegt die alles mit einem Ladebalken versieht. Das ganze script ist auch Open Source und ihr könnte (zumindest in der Theorie) genau nachvollziehen was das script macht.

> Warum baust du dann nicht einfach einen Installer?

Zum einen habe ich mich noch nie mit dem erstellen mit so einem Installer beschäftigt und zum anderen habe ich nicht die Erlaubniss die Opensource Packete von OBS oder Git einfach so in einen Installer zu packen.

> Why Download so slow? Wozu haben wir denn selbst so einen tollen schnellen Server?

Die Downloads kommen direkt von den Herausgebern der Software und wie bei großen OpenSource Projekten ohne viele finanzielle Mittel üblich, ist das ganze idR etwas langsamer. Open Source gibt Euch aber die Sicherheit dass ihr (theoretisch) immer genau wissen könnt was die Software macht und auch nur der Download direkt aus dem Repository ist wirklich sicher. In allen anderen alternativen (schnelleren) Downloadquellen könnte Schadcode eingebunden sein der Euch ausspioniert ohne das ihr es merkt...

> Kann ich auch einfach meine alte OBS Installation nehmen?

Nein das ist leider nicht möglich, da Windows in der Regel das Installationsverzeichniss sperrt.

> Gehen meine anderen Szenen und einstellungen meines eigenen Channels verloren?

Nein. Ihr erstellt lediglich eine portable Version die unabhängig von eurer Installation funktionieren. Ihr könnte jedoch auch eure Vorhandenen Szenen in die portable Version importieren!

> Warum der Aufwand?

Bei so vielen Streamern die wir bei Leipzig eSports haben ist es oft sehr schwer auch nur kleine Änderungen (z.B. das anpassen/ändern der Sponsoren) an alle zu vermitteln und es dauert idR. sehr lange eh alle diese Änderungen einpflegen. Da wir in Zukunft auch z.B. mit sich ändernden Donationgoals arbeiten wollen und wir vermeiden wollen das diese von manchen Streamern einfach nicht genutzt werden gibt es jetzt diese Version des Overlays wo ihr bequem per Mausklick alle aktuellen Änderungen hinzufügen könnt.

> Meh. Das ist mir alles viel zu Auwendig, kann ich nicht einfach so weitermachen wie bisher?

Nein. Dem Twitchadmin ist es schon lang ein Dorn im Auge das manche Änderungen nur sehr träge verarbeitet werden und eine Updatende Version ist der Logische schritt.

> Kann zur Weiterentwicklung des Overlays Beitragen?

Natürlich! Du kannst wie oben beschrieben eigene Szenen zur Aufnahme in das Overlay hinzufügen. Außerdem kannst du dich auch gerne an der weiterentwicklung der Instalationsroutinen beteiligen. Das repository ist öffenlich und ich freue mich über Pullrequest mit sinnvollen Verbesserungen!

> Was ist mit deiesm Autohotkey script wovon ich zwar gelesen habe, aber kaum Jemand hat es benutzt?

Dies ist nicht mehr notwendig. OBS unterstützt jetzt von haus aus eine Videotransisition.

> Warum nur Windows?

Windows ist momentan vermutlich die Hauptsächlich genutzte Platform bei unseren Streamern. Weitere Platformen sind in Arbeit werden allerdings noch dauern

> Darf ich das Overlay auch auf meinem eigenen Kanal verwenden?

Nein. Wie auch beim Alten Overlay wollen wir vermeiden dass evtl. auch externe sich durch das Overlay als Vertreter des Vereins ausgeben. Weiterhin sind alle verwendeten Grafiken geistiges Eigentum des vereins bzw. die Nutzung dieser ist nur dem Verein gestattet.

> Marzipan oder Nougat?

Ganz klar team Nougat
