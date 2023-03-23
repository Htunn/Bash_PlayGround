#!/bin/env bash
### Turn on debugging mode ###
set -x

#Run Shell command
echo "${LOGNAME}"
echo "Today is $(date)"
echo "Users currently on the machine, and their processes:"

### Turn off debug mode ###
set +x


set -n #only read command but do not execute them
set -o noexec
echo "This is a test"
#no file is created as bash will only read commands but do not execute them
>tmp/debug.txt
