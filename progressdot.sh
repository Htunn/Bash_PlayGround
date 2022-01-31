#!/usr/bin/env bash

# progress - Display progress while making backup
# Show Progress Bar
progress(){
    echo -n "$0: Please wait..."
    while true 
    do
        echo -n "."
        sleep 5
    done
}

#dobackup(){
#    #put backup command
#    tar -zcvf /tmp /tmp >/dev/null 2>&1
#}
#
## start it in the background
progress &
#
#
##Save progress() PID
## You need to use the PID to kill the function
#MYSELF=$!
#
##start backup
#dobackup
#
##kill progress
#kill $MYSELF >/dev/null 2>&1
#
#echo -n "....done"
#echo
