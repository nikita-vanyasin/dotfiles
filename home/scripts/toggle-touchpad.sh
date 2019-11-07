#!/bin/zsh


ID=$(xinput --list  | grep -i touch | awk '{print $6}' | awk -F "="  '{print $2}')

if xinput list-props $ID | grep "Device Enabled (165):.*1" >/dev/null
then
  xinput disable $ID
  dunstify -r 6662 "Trackpad disabled"
else
  xinput enable $ID
  dunstify -r 6662 "Trackpad enabled"
fi