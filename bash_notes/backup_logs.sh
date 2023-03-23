#!/usr/bin/bash

# this script clear syslog log file
echo "pls input backup file"
read INPUT
mv $INPUT $INPUT.$(date +%d-%m-%y)

# clear syslog log file

cat /dev/null > $INPUT

# print about the script status when complete

echo "log file backup to $INPUT.old"

exit 0

