# mac_background_music_remove
Remoe background music app

Backgroud music is great app to manipulate volume level for every and each application separately. Also it includes capabilites to record computer sound.
In most cases BM is working great, but if you think you have an issue because of that software, remove it and verify if it helps.

Most information can be found: https://github.com/kyleneideck/BackgroundMusic/blob/master/MANUAL-UNINSTALL.md

1. remove application "background music" from app
2. execute script:
```rb
sudo rm -rf "/Library/Audio/Plug-Ins/HAL/Background Music Device.driver"
sudo rm -rf /usr/local/libexec/BGMXPCHelper.xpc
sudo launchctl bootout system /Library/LaunchDaemons/com.bearisdriving.BGM.XPCHelper.plist
sudo rm /Library/LaunchDaemons/com.bearisdriving.BGM.XPCHelper.plist
sudo dscl . -delete /Users/_BGMXPCHelper
sudo dscl . -delete /Groups/_BGMXPCHelper

sudo launchctl kickstart -kp system/com.apple.audio.coreaudiod
```
