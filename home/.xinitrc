#!/usr/bin/env zsh

#xmodmap ~/.Xmodmap (note: this is for my custom key assignments)

#xrdb -merge ~/.Xresources (to load ~/.Xresources if you use it)

exec dbus-launch i3 #-d all