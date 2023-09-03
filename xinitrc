#!/bin/sh
#xscreensaver --no-splash &
#xsetroot -solid '#000000'&
xrandr --dpi 120 &
setxkbmap br &
xrdb -merge ~/.Xdefaults &
feh --bg-fill /home/$USER/wallpaper
exec /usr/bin/i3

