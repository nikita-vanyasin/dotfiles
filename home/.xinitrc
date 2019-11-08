#!/usr/bin/env zsh

#xmodmap ~/.Xmodmap (note: this is for my custom key assignments)

#xrdb -merge ~/.Xresources (to load ~/.Xresources if you use it)


# configure TrackPoint sensitivity:
deviceID=$(xinput --list  | grep -i trackpoint | awk '{print $6}' | awk -F "="  '{print $2}')
xinput --set-prop $deviceID 'libinput Accel Speed' -0.4

exec dbus-launch i3 #-d all