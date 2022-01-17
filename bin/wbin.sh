#!/bin/bash
# Copyright © 2022 Jonathan Sanfilippo


echo $((1 + RANDOM % 7200)) > ~/.Wallsplash/data/random

wget -O ~/.Wallsplash/data/wallsplash.jpg   "$(cat ~/.Wallsplash/data/url)$(cat ~/.Wallsplash/data/resolution)-$(cat ~/.Wallsplash/data/random).jpg"

#cinnamon mint 20.3
rm -rf ~/.cache/wallpaper
gsettings set  org.cinnamon.desktop.background picture-uri file:///home/$USER/.Wallsplash/data/wallsplash.jpg

#gnome 41.3 - unity
gsettings set org.gnome.desktop.background picture-uri file:///home/$USER/.Wallsplash/data/wallsplash.jpg

#KDE TSETING
dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
var Desktops = desktops();                                                                                                                       
for (i=0;i<Desktops.length;i++) {
        d = Desktops[i];
        d.wallpaperPlugin = "org.kde.image";
        d.currentConfigGroup = Array("Wallpaper",
                                    "org.kde.image",
                                    "General");
        d.writeConfig("Image", "file:///home/$USER/.Wallsplash/data/wallsplash.jpg");
}'

exec ~/.Wallsplash/bin/check.sh




