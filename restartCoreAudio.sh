#!/bin/sh

#use before restarting your mac, usually helps in case of sound issue
#it will disconnect all headset

ps ax|grep 'coreaudio[a-z]' | awk '{print $1 " " $5}'
kill -9 $(ps ax|grep 'coreaudio[a-z]' | awk '{print $1}')
