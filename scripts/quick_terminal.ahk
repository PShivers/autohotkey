#Requires AutoHotkey v2.0

; Win+Space: Toggle Windows Terminal (summon/hide)
#Space::
{
    if WinExist("ahk_exe WindowsTerminal.exe")
    {
        if WinActive("ahk_exe WindowsTerminal.exe")
            WinMinimize
        else
            WinActivate
    }
    else
    {
        Run "wt.exe"
    }
}
