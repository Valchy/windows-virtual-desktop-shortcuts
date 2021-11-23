; Remove program icon from windows system tray
#NoTrayIcon

; SETUP:
; Change the following values to reflect your current desktop state and reload the script
; Remember on windows 1 is default for start up (currentdesktop)

desktopcount := 3
currentdesktop := 1


; Refer to the autohotkey documentation for all key
; e.g # = WIN, ! = alt, ^ = CTRL :)
; https://www.autohotkey.com/docs/Hotkeys.htm


; List of all the NEW sexy hot keys
; Right now it is alt+NUMBER[1-3]
!1::SwitchDesktop(1)
!2::SwitchDesktop(2)
!3::SwitchDesktop(3)

; Shows the number of virtual desktops and the selected desktop inside the program
; Use this to verify the configuration and fix possible issues
!`::MsgBox Desktop Count = %desktopcount%`nCurrent Desktop = %currentdesktop%

; Switching the virtual desktop based on the keys 1,2 or 3
SwitchDesktop(desktop) {
    global desktopcount
    global currentdesktop

    desktopdiff := desktop - currentdesktop

    if (desktop > desktopcount) {
        return
    }

    if (desktopdiff < 0) {
        desktopdiff *= -1
        Loop %desktopdiff% {
            Send ^#{Left}
            Sleep, 200
        }   
    } else if (desktopdiff > 0) {
        Loop %desktopdiff% {
            Send ^#{Right}
            Sleep, 200
        }
    }

    currentdesktop := desktop
}