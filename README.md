# Wallsplash
Wallsplash allows you to change your linux wallpaper with beautiful wallpapers taken from the internet. (no unsplash or bing) 

Wallsplash is a script to change wallpapers on Gnome. Download beautiful random images from the internet and update your Gnome wallpaper. Can be used with cronie, and needs to have notify-send installed to send you notifications.

# Install

1. It allowed the instal.sh file to run as a program
2. right-click install.sh file.
3. Enter the root password and choose the most suitable version of your graphic resolution, among 1080p, 4k, 5k, 8k UHD.
4. start Wallsplash manually from the programs menu or install chrones and set the time to change your wallpaper automatically.

# Automatic switch with cronie

1. Install cronie for your linux version.
2. Open terminal and type $ systemctl enable cronie.
3. type $ cronie -e and set for example */15 * * * * ~/.Wallsplash/bin/wbin.sh (change every 15 minutes), @hourly ~/.Wallsplash/bin/wbin.sh (change every 1 hour).
4. Check your crontab with $ cronie -l 


