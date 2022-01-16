#!/bin/bash
# Copyright © 2022 Jonathan Sanfilippo


echo $((1 + RANDOM % 7200)) > ~/.Wallsplash/data/random

wget -O ~/.Wallsplash/data/wallsplash.jpg   "$(cat ~/.Wallsplash/data/url)$(cat ~/.Wallsplash/data/resolution)-$(cat ~/.Wallsplash/data/random).jpg"

mv ~/.Wallsplash/data/wallsplash.jpg  ~/.config/background

exec ~/.Wallsplash/bin/check.sh





