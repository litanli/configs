#Requires AutoHotkey v2.0

/* Multiline comment */
; Single line comment

/* Run this file using AutoHotkey. AutoHotkey will run it as a background
process and intercept and remap the following rules. These rules allow homerow
typing with ijkl arrows. */

/* CapsLock + ijkl arrows and shift highlighting */
CapsLock & j:: 
{
    if GetKeyState("Shift", "P")  ; Check if Shift is pressed
    {
        Send("+{Left}")  ; Shift Left Arrow
    }
    else
    {
        Send("{Left}")  ; Otherwise, Left Arrow
    }
}
CapsLock & l:: 
{
    if GetKeyState("Shift", "P")
    {
        Send("+{Right}")
    }
    else
    {
        Send("{Right}")
    }
}
CapsLock & i:: 
{
    if GetKeyState("Shift", "P")
    {
        Send("+{Up}")
    }
    else
    {
        Send("{Up}")
    }
}
CapsLock & k:: 
{
    if GetKeyState("Shift", "P")
    {
        Send("+{Down}")
    }
    else
    {
        Send("{Down}")
    }
}



/* Control + ijlk arrows (beginning of file, beginning of line, end of line, EOF) 
and shift highlighting */
Control & i::
{
    if GetKeyState("Shift", "P")
    {
        Send("{Control down}{Shift down}{Home}{Shift up}{Control up}")
    }
    else
    {
        Send("^{Home}")  ; Control Home
    }
}
Control & k::
{
    if GetKeyState("Shift", "P") 
    {
        Send("{Control down}{Shift down}{End}{Shift up}{Control up}")
    }
    else
    {
        Send("^{End}") 
    }
}
Control & j::
{
    if GetKeyState("Shift", "P")
    {
        Send("+{Home}")
    }
    else
    {
        Send("{Home}")
    }
}
Control & l::
{
    if GetKeyState("Shift", "P")
    {
        Send("+{End}")
    }
    else
    {
        Send("{End}")
    }
}

; One word at a time doesn't work because Control l locks screen, can't disable it.
/* Win/Opt j, Win/Opt l */
; #l::
;{
;    ; Do nothing
;    return
;}
;#j::Send("{Control down}{Left}{Control up}")
;#l::Send("{Control down}{Right}{Control up}")
