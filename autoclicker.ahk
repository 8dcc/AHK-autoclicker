; Made by r4v10l1

global enabled := false
global delay := 100

global box_width := "w145"               ; Box width
global box_height := "h99"               ; Box height
global window_width := "W146"            ; Box width + 1
global window_height := "H94"            ; Box height - 5

global file_name := "autoclicker.ahk"    ; Change to .exe when compiling

Gui Color, ffffff
Gui, Add, GroupBox, %box_width% %box_height% c000000,
Gui, Add, Text, x24 y23, Please enter the delay:
Gui, Add, Edit, x21 y43 Number Limit5 vDelay
Gui, Add, Button, Default w120, OK
Gui, Show
WinSet, Style, -0xC00000, %file_name%,
WinSet, Region, 9-11 %window_width% %window_height%, %file_name%,
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
