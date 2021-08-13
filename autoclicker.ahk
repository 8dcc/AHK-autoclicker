; Made by r4v10l1

global enabled := false
global delay := 100

Gui Color, ffffff
Gui, Add, GroupBox, w130 h85,
Gui, Add, Text, x18 y16, Please enter the delay:
Gui, Add, Edit, x15 y35 Number Limit5 vDelay
Gui, Add, Button, Default w120, OK
Gui, Show
WinSet, Style, -0xC00000, autoclicker.ahk,
WinSet, Region, 0-0 W151 H102, autoclicker.ahk,
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
