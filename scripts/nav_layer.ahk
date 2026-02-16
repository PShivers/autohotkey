#Requires AutoHotkey v2.0
InstallKeybdHook
#UseHook
SetKeyDelay 0, 50

; Left Alt + Navigation (using physical key positions)
LAlt & i::Send "{Up}"
LAlt & j::Send "{Left}"
LAlt & k::Send "{Down}"
LAlt & l::Send "{Right}"
LAlt & h::Send "^{Left}"    ; Ctrl+Left (word left)
LAlt & `;::Send "^{Right}"  ; Ctrl+Right (word right)
LAlt & m::Send "{Home}"
LAlt & .::Send "{End}"
LAlt & u::Send "{PgUp}"
LAlt & o::Send "{PgDn}"
