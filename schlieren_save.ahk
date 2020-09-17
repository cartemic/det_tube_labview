#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^!XButton2::
WinActivate, Pcc
ControlClick, Save Cine..., Pcc
WinWait, Save Cine
Sleep, 500
ControlClick, SysListView321, Save Cine
Sleep, 500
Send, `b
Sleep, 500
Send, `b
Sleep, 500
;ControlSend, SysListView321, {Down}, Save Cine
ControlGet, dirList, List, , SysListView321, Save Cine
Loop, Parse, dirList, `n  ; Rows are delimited by linefeeds (`n).
{
    ControlSend, SysListView321, {Down}, Save Cine
}
Sleep, 500
Send, {Enter}
Sleep, 500
ControlGet, dirList, List, , SysListView321, Save Cine
Loop, Parse, dirList, `n  ; Rows are delimited by linefeeds (`n).
{
    ControlSend, SysListView321, {Down}, Save Cine
}
Sleep, 500
Send, {Enter}
Sleep, 500
Control, Check, , XML header file, Save Cine
Sleep, 500
Control, Check, , XML header file, 16 bpp
Sleep, 500
ControlSend, Edit1, {Text}frames.cine, Save Cine
Sleep, 500
Control, Choose, 1, ComboBox3, Save Cine
Sleep, 500
ControlClick, Button2, Save Cine
Send, {Enter}
Sleep, 2000
ControlClick, Save Cine..., Pcc
WinWait, Save Cine
Sleep, 500
ControlClick, ToolbarWindow321, Save Cine
Sleep, 500
Send, frames{Enter}{Enter}
Sleep, 500
Control, Check, , XML header file, Save Cine
Sleep, 500
ControlSend, Edit1, {Text}frame_+3.tif, Save Cine
Sleep, 500
Control, Choose, 13, ComboBox3, Save Cine
Sleep, 500
ControlClick, Button2, Save Cine
Send, {Enter}
Sleep, 2000
ControlSetText, WindowsForms10.EDIT.app.0.378734a43, -600, Pcc
Sleep, 500
ControlSend, WindowsForms10.EDIT.app.0.378734a43, {Enter}, Pcc
Sleep, 500
Send, ^[
Sleep, 500
ControlSetText, WindowsForms10.EDIT.app.0.378734a43, -500, Pcc
Sleep, 500
ControlSend, WindowsForms10.EDIT.app.0.378734a43, {Enter}, Pcc
Sleep, 500
Send, ^]
Sleep, 500
ControlClick, Save Cine..., Pcc
WinWait, Save Cine
Sleep, 500
ControlClick, SysListView321, Save Cine
Send, `b
Sleep, 500
ControlClick, ToolbarWindow321, Save Cine
Sleep, 500
Send, bg{Enter}{Enter}
Sleep, 500
Control, Check, , XML header file, Save Cine
Sleep, 500
ControlSend, Edit1, {Text}bg_+3.tif, Save Cine
Sleep, 500
Control, Choose, 13, ComboBox3, Save Cine
Sleep, 500
ControlClick, Button2, Save Cine
Send, {Enter}
Sleep, 5000
ControlClick, Save Cine..., Pcc
Sleep, 500
WinWait, Save Cine
ControlClick, SysListView321, Save Cine
Send, `b
Sleep, 500
Control, Check, , XML header file, Save Cine
Sleep, 500
Control, Check, , XML header file, 16 bpp
Sleep, 500
ControlSend, Edit1, {Text}bg.cine, Save Cine
Sleep, 500
Control, Choose, 1, ComboBox3, Save Cine
Sleep, 500
ControlClick, Button2, Save Cine
Send, {Enter}
Sleep, 5000
ControlClick, WindowsForms10.Window.8.app.0.378734a156, Pcc
Sleep, 500
Send, {Left}
Sleep, 500
ControlClick, WindowsForms10.BUTTON.app.0.378734a75, Pcc
return