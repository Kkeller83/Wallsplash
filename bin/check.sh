#!/bin/bash
# Copyright © 2022 Jonathan Sanfilippo
#cp ~/Wallsplash/bk.jpg  ~/.config/
#mv ~/.config/bk.jpg  ~/.config/background

file=~/.config/background
minimumsize=100
actualsize=$(wc -c <"$file")
if [ $actualsize -ge $minimumsize ]; then
    XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send -u normal -i ~/.Wallsplash/asset/icon.svg "Wallsplash" "Wallpaper update!" 
else
    exec ~/.Wallsplash/fix/fix.sh;
    
fi
