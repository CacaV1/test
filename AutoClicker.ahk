#Requires AutoHotkey v2.0

auto := False

;start-end button (default: home)
Home:: {
    Global auto := !auto
    SoundBeep 1000 + 500 * auto ; beep sound when on-off autoclicker
    if (auto) {
        SetTimer DoClick, 1000  ; clicks every x miliseconds (default: 1000=1second)
    } else {
        SetTimer DoClick, "0"  ; re press button disables autoclicker
    }
}

DoClick() {
    if (auto) {
        Click "right"  ; left click - right click configuration
    }
}
