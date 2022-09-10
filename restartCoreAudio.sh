#!/bin/sh

ps ax|grep 'coreaudio[a-z]' | awk '{print $1 " " $5}'
kill -9 $(ps ax|grep 'coreaudio[a-z]' | awk '{print $1}')
