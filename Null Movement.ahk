#SingleInstance, Force
#NoEnv
#MaxHotkeysPerInterval, 99000000
#HotkeyInterval, 99000000
#KeyHistory, 0
SetWorkingDir, %A_ScriptDir%
#Persistent
SetKeyDelay, -1, -1
SetBatchLines, -1
ListLines, Off
Process, Priority,, A

; Null Movement Script
q_held := q_scrip := d_held := d_scrip := 0
z_held := z_scrip := s_held := s_scrip := 0

*$q::
    q_held := 1
    if d_scrip {
        d_scrip := 0
        Send, {Blind}{d up}
    }
    if !q_scrip {
        q_scrip := 1
        Send, {Blind}{q down}
    }
return

*$q up::
    q_held := 0
    if q_scrip {
        q_scrip := 0
        Send, {Blind}{q up}
    }
    if d_held && !d_scrip {
        d_scrip := 1
        Send, {Blind}{d down}
    }
return

*$d::
    d_held := 1
    if q_scrip {
        q_scrip := 0
        Send, {Blind}{q up}
    }
    if !d_scrip {
        d_scrip := 1
        Send, {Blind}{d down}
    }
return

*$d up::
    d_held := 0
    if d_scrip {
        d_scrip := 0
        Send, {Blind}{d up}
    }
    if q_held && !q_scrip {
        q_scrip := 1
        Send, {Blind}{q down}
    }
return

*$z::
    z_held := 1
    if s_scrip {
        s_scrip := 0
        Send, {Blind}{s up}
    }
    if !z_scrip {
        z_scrip := 1
        Send, {Blind}{z down}
    }
return

*$z up::
    z_held := 0
    if z_scrip {
        z_scrip := 0
        Send, {Blind}{z up}
    }
    if s_held && !s_scrip {
        s_scrip := 1
        Send, {Blind}{s down}
    }
return

*$s::
    s_held := 1
    if z_scrip {
        z_scrip := 0
        Send, {Blind}{z up}
    }
    if !s_scrip {
        s_scrip := 1
        Send, {Blind}{s down}
    }
return

*$s up::
    s_held := 0
    if s_scrip {
        s_scrip := 0
        Send, {Blind}{s up}
    }
    if z_held && !z_scrip {
        z_scrip := 1
        Send, {Blind}{z down}
    }
return
