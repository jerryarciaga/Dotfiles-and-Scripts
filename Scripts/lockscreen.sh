#!/bin/bash

LOCKSCREEN=/tmp/lockscreen.png
GACHA=~/.wallpaper/gacha
OVERLAY=$GACHA/$(ls $GACHA | shuf -n 1)
BLUR="0x9"

if [ -a $LOCKSCREEN ]; then
    rm $LOCKSCREEN
fi

scrot $LOCKSCREEN
mogrify $LOCKSCREEN -blur $BLUR $LOCKSCREEN
composite -gravity Center $OVERLAY $LOCKSCREEN $LOCKSCREEN
i3lock -i $LOCKSCREEN
rm $LOCKSCREEN
