#!/bin/sh
# This is a comment!
xsetwacom --list devices | grep Pad
echo Write the ID
read id
xsetwacom --set $id button 1 "key e"
xsetwacom --set $id button 2 "key ctrl shift z"
xsetwacom --set $id button 3 "key ctrl z"
xsetwacom --set $id button 8 "key ctrl s"
xsetwacom --set $id button 9 "key ctrl shift ="
xsetwacom --set $id button 10 "key ctrl -"
