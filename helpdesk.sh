#!/usr/bin/bash
while true ; do
          trap "echo NOPE" INT
          pinghost () 
          {
                echo which host do you want to ping
                read HOSTNAME
                ping -c 5 $HOSTNAME
           }

           echo 'Select option: '
           select TASK in 'change password' 'monitor disk space' 'ping a host' 'logout'
           do
                case $REPLY in
                      1) TASK=passwd;;
                      2) TASK="df -h";;
                      3) TASK=pinghost;;
                      4) TASK=exit;;
                esac

                if [ -n "task" ]
                then
                    $TASK
                    break
                 else
                    echo invalid choice #, try again
                 fi
           done
done

