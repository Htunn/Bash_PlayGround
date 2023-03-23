#!/usr/bin/bash

# start counter with positional parameters $1

COUNTER=$1
COUNTER=$(( COUNTER * 60 ))

minute(){
        COUNTER=$(( COUNTER - 1 ))
        sleep 1
}

# put counter value in while loop

while [ $COUNTER -gt 0 ]
do
      echo you still have $COUNTER seconds
      minute
done

[ $COUNTER = 0 ] && echo out of time && minute
[ $COUNTER = "-1" ] && echo you are one second late && minute

# subtract counter time

while true
do
      echo you are ${COUNTER#*-} second late
      minute
done


