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

; Right Alt as Control
RAlt::Control

; Right Control as Windows key
RControl::LWin

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