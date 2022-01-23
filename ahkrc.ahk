Loop
{
    SetCapsLockState, off
    Sleep, 500
}

$Capslock::Esc

$Launch_App2::Media_Play_Pause
$ScrollLock::Capslock

+!ScrollLock::run,%comspec% /k taskkill /F /IM Unity.exe && exit
+!MButton::run,%comspec% /k taskkill /F /IM Unity.exe && exit
#^K::Send {LWin down}{LCtrl down}{Right down}{Lwin up}{LCtrl up}{Right up}
#^J::Send {LWin down}{LCtrl down}{Left down}{Lwin up}{LCtrl up}{Left up}