; Made by r4v10l1

global enabled := false

InputBox, delay, Delay, Please type here your delay., , 200, 130
if ErrorLevel
    ExitApp


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
