#!/usr/bin/bash

# Monitoring process

echo "pls provide process you want to monitor"
read PROCESS

# make sure that $PROCESS is equal to the service script that needs starting

COUNTER=0
while ps aux | grep $PROCESS | grep -v grep > /dev/null
do
      COUNTER=$((COUNTER+1))
      sleep 1
      echo COUNTER is $COUNTER
done

# ad system log with logger 
logger PROCESSMONITOR: $PROCESS stopped at $(date)

# Start PROCESS
service $PROCESS start

# mail log to current user mail box
mail -s "$PROCESS is stopped" $USER < .
