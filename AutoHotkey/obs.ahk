;AHK Script für LES Stream Overlay zum Umschalten der Szene mit Szenenübergang_
;by Mason:
;Das Script muss zunächst bei geöffnetem und activem OBS Studio während die Maus über der Quelle "Übergang" ist mittels Ctrl + Shift + Numpad0 bzw. Ctrl + Shift + F12 initialisiert werden:
;Danach kann mittels Ctrl + Shift + Numpad1 bis Numpad3 bzw. Ctrl + Shift + F9 bis F11 zwischen den Szenen mit Szenenübergang umgeschaltet werden.:
;Bitte beachte das Im OBS Studio die Hotkeys zum Umschalten zwischen den Szenen auf Ctrl + Alt + Numpad1 bis Numpad3 eingestellt sein müssen!:

#InstallKeybdHook
#UseHook

obsID := Object() 
mouseX := Object()
mouseY := Object()

^NumpadEnd::
+^F9::
	ActivateCut(obsID, mouseX, mouseY, "1")	
Return

^NumpadDown::
+^F10::
	ActivateCut(obsID, mouseX, mouseY, "2")	
Return

^NumpadPgDn::
^+F11::
	ActivateCut(obsID, mouseX, mouseY, "3")	
Return


^NumpadIns::
^+F12::
	Init()
Return


ActivateCut(obsID, mouseX, mouseY, zuSzene) 
{
	SetKeyDelay 10,50
	WinGet, activeWindow,,A ;Holt Die ID des gerade aktivierten Fensters:
	MouseGetPos, activeX, activeY
	;WinMinimize, A:
	;Send, {ALT Down}{Tab}{Alt Up}:
	WinActivate, ahk_id %obsID%
	click %mouseX%, %mouseY%
	click %mouseX%, %mouseY%
	Send, {ENTER}
	WinActivate, ahk_id %activeWindow%
	MouseMove, %activeX%, %activeY%
	Sleep, 2000 
	Send, {Ctrl Down}{Alt Down}{Numpad%zuSzene%}{Alt Up}{Ctrl Up}
	
}

Init()
{
	global mouseX
	global mouseY
	global obsID
	WinGet, obsID,,A
	MouseGetPos, mouseX, mouseY
	MsgBox, Fenster ID und Postion des Cursors erfolgreich Initialisiert! 	
}




