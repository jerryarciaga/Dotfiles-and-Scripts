#!/bin/bash

status_update () {
    if [ $? -eq 0 ]; then
        printf "[COMPLETE] $1\n"
    else
        printf "[FAIL] $2\n"
        exit 1
    fi
}

/usr/bin/newsboat -E ~/.newsboat/read.txt &>/dev/null
status_update "Updated read RSS Feeds" "RSS Feeds not updated"

/usr/bin/rsync -avze ssh ~/.newsboat/read.txt \
    jerry@therealraspberrypi:~/.newsboat/read.txt &>/dev/null
status_update "Read list forwarded to Raspberry Pi Server" \
    "Check connection to the Raspberry Pi Sever"

/usr/bin/ssh jerry@therealraspberrypi "/usr/bin/newsboat -I ~/.newsboat/read.txt" &>/dev/null
status_update "Updated cache with read lists" "Cache not updated"

/usr/bin/rsync -avze ssh jerry@therealraspberrypi:~/.newsboat/cache.db \
    ~/.newsboat/cache.db &>/dev/null
status_update "Cache downloaded from Raspberry Pi Server" \
    "Unable to download cache"

/usr/bin/newsboat -x reload &>/dev/null
status_update "RSS Update Done" "RSS Update Fail"

printf "Deleting RSS Read List Files...\n"
/usr/bin/ssh jerry@therealraspberrypi "/usr/bin/rm ~/.newsboat/read.txt"
/usr/bin/rm ~/.newsboat/read.txt
exit 0
