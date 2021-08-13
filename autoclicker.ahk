; Made by r4v10l1

global enabled := false
global delay := 100

Gui Color, dddddd
Gui, Add, Text,, Please enter the delay:
Gui, Add, Edit, Number Limit5 vDelay
Gui, Add, Button, Default w120, OK
Gui, Show
WinSet, Style, -0xC00000, autoclicker.ahk,
WinSet, Region, 0-0 W140 H85, A,
Return

ButtonOK:
Gui, Submit

Loop {
    if (enabled = true) {
        Send {LButton}
        Sleep, delay
    }
}

F3::
enabled := !enabled
return

F4::
ExitApp
return
