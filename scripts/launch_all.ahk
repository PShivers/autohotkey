#Requires AutoHotkey v2.0

; Launch all scripts from the same directory
scripts := [
    "qwerty2colemakdh_with_nav.ahk",
    "nav_layer.ahk",
    "right_mod_remap.ahk",
    "quick_terminal.ahk"
]

for script in scripts
    Run A_ScriptDir "\" script
