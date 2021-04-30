#!/usr/bin/bash

/usr/bin/newsboat -I /home/jerry/.newsboat/read.txt
/usr/bin/newsboat -x reload

if [ $? -eq 0 ]; then
	printf "[SUCCESS] RSS Update Complete\n"
else
	printf "[FAIL] RSS Update Failed\n"
fi
