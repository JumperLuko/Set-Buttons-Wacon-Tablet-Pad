#!/bin/sh
# This is a comment!
# xsetwacom --list devices | grep "Pad pad"
# read id
button1="b"
button2="ctrl shift z"
button3="ctrl z"
button4="ctrl s"
button5="ctrl shift ="
button6="ctrl -"

ID=`xsetwacom --list devices | grep "Pad pad" | sed 's/HID 256c:006d Pad pad           	id: //' | sed 's/	type: PAD//'`
echo "Founded a PAD! The ID is $ID, and i'm appling de config"
xsetwacom --set $ID button 1 "key $button1"
xsetwacom --set $ID button 2 "key $button2"
xsetwacom --set $ID button 3 "key $button3"
xsetwacom --set $ID button 8 "key $button4"
xsetwacom --set $ID button 9 "key $button5"
xsetwacom --set $ID button 10 "key $button6"
