#!/bin/bash
# Copyright © 2022 Jonathan Sanfilippo
#cp ~/Wallsplash/bk.jpg  ~/.config/
#mv ~/.config/bk.jpg  ~/.config/background


cp ~/.Wallsplash/asset/background  ~/.config/
XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send -u normal -i ~/.Wallsplash/asset/icon.svg "Wallsplash" "I couldn't download the Wallpaper, I set the temporary one :(" 
