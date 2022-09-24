#!/bin/bash

LOCKSCREEN=/tmp/lockscreen.png
LOCKSCREEN_LOGO=~/.wallpaper/logo
OVERLAY=$LOCKSCREEN_LOGO/$(ls $LOCKSCREEN_LOGO | shuf -n 1)
BLUR="0x9"

if [ -a $LOCKSCREEN ]; then
    rm $LOCKSCREEN
fi

# Take screenshot, blur image, overlay the randomly selected logo
# onto it then set it as the lockscreen
scrot $LOCKSCREEN
mogrify $LOCKSCREEN -blur $BLUR $LOCKSCREEN
composite -gravity Center $OVERLAY $LOCKSCREEN $LOCKSCREEN
i3lock -i $LOCKSCREEN
rm $LOCKSCREEN
