#!/bin/bash

/usr/bin/newsboat -E /home/jerry/.newsboat/read.txt

/usr/bin/rsync -avze ssh /home/jerry/.newsboat/read.txt \
    jerry@therealraspberrypi:~/.newsboat/read.txt

/usr/bin/newsboat -x reload

if [ $? -eq 0 ]; then
    printf "RSS Update Done\n"
else
    printf "RSS Update Fail\n"
fi
