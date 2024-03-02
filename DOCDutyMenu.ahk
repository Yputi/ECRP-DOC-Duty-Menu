#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SetKeyDelay, 1
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

F10:: ; EDIT THIS KEY TO ANYTHING YOU LIKE

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Menu, FullMenu, Add, Duty clothes on, DutyClothesOn
Menu, FullMenu, Add, Duty clothes off, DutyClothesOff
Menu, FullMenu, Add, Start watch radio + create unit, StartWatchRadio
Menu, FullMenu, Add, End watch radio + disband unit, EndWatchRadio
Menu, FullMenu, Add, Bodycam on, BodycamOn
Menu, FullMenu, Add, Bodycam off, Bodycamoff
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

CoordMode, Menu, Screen
Menu, FullMenu, Show, % A_ScreenWidth/2, % A_ScreenHeight/2
return

DutyClothesOn:
Send, t/melow Opens the clothing locker and grabs their uniform, putting it on{enter}
Sleep, 1000
Send, t/melow Grabs their equipment from their locker, putting everything on their duty belt{enter}
Return

DutyClothesOff:
Send, t/melow Opens the clothing locker and takes their uniform off, putting it back in the clothing locker{enter}
Sleep, 1000
Send, t/melow Takes all the equipment of their duty belt, putting it back in the locker{enter}
Return

StartWatchRadio:
Send, t/r RANK LASTNAME starting watch under UNITNAME{enter} ; EDIT RANK, LASTNAME AND UNITNAME
Sleep, 500
Send, t/Createunit UNITNAME{enter} ; EDIT UNITNAME
Return

EndWatchRadio:
Send, t/r BADGENR ending watch, disbanding unit{enter} ; EDIT BADGE NUMBER!
Sleep, 500
Send, t/Disbandunit{enter}
Return

BodycamOn:
Send, t/me Grabs their bodycam from the locker and attaches the bodycam on their chest mount after turning it on{enter}
Sleep, 500
Send, t/time{enter}
Return

BodycamOff:
Send, t/me Grabs their bodycam from the chest mount, turns it off and safely stores it in their locker{enter}
Sleep, 500
Send, t/time{enter}
Return
