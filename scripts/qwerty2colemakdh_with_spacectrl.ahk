#Requires AutoHotkey v2.0
InstallKeybdHook
#UseHook
SetKeyDelay 0, 50

; Row 1
$e::f
$r::p
$t::b
$y::j
$u::l
$i::u
$o::y
$p::`;

; Row 2
$s::r
$d::s
$f::t
$g::g
$h::m
$j::n
$k::e
$l::i
$`;::o

; Row 3
$z::x
$x::c
$c::d
$b::z
$n::k
$m::h

$backspace::CapsLock
$CapsLock::Backspace

$Space::
{
    ; Wait up to 0.2 seconds for Space to be released
    ; If released quickly (returns 1), it's a tap
    if KeyWait("Space", "T0.2")
    {
        Send "{Space}"
    }
    ; If still held after 0.2 seconds (returns 0), it's a hold
    else
    {
        Send "{Control down}"
        KeyWait "Space"  ; Wait for release
        Send "{Control up}"
    }
}
