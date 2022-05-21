#!/bin/sh

xwallpaper --zoom ~/.config/wall.png
pulseaudio --daemonize=no --exit-idle-time=-1 &
setxkbmap 'us,ua,ru' -option 'grp:alt_shift_toggle' &
unclutter -idle 1 -jitter 2 -root &
xautolock -time 10 -locker slock &
xset r rate 300 50 &
dunst &
xcompmgr &
slstatus &
exec dwm
