$Space::
{
    ; KeyWait, "Space", "T0.1" waits for a quick release within 0.1 seconds (100 milliseconds).
    ; If the key is released within this time, it's considered a "tap".
    if KeyWait("Space", "T0.1")
    {
        Send("{Space}")
    }
    ; If the key is not released within 0.1 seconds, it's considered a "hold".
    else
    {
        ; Send the Control key down.
        Send("{Control down}")
        ; Wait for the Space key to be released before sending Control up.
        KeyWait("Space")
        Send("{Control up}")
    }
}
