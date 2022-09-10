#!/bin/sh

sudo rm -rf "/Library/Audio/Plug-Ins/HAL/Background Music Device.driver"
sudo rm -rf /usr/local/libexec/BGMXPCHelper.xpc
sudo launchctl bootout system /Library/LaunchDaemons/com.bearisdriving.BGM.XPCHelper.plist
sudo rm /Library/LaunchDaemons/com.bearisdriving.BGM.XPCHelper.plist
sudo dscl . -delete /Users/_BGMXPCHelper
sudo dscl . -delete /Groups/_BGMXPCHelper

sudo launchctl kickstart -kp system/com.apple.audio.coreaudiod
