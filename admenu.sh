#!/usr/bin/bash
# sample administration menu

echo 'select a task: '
select TASK in 'Check mounts' 'Check disk space' 'Check Memory Usage' 'Check public IP' 'kill process' 'copy file' 'backupfile'
do
    case $REPLY in
           1) TASK="mount";;
           2) TASK="disk_usage";;
           3) TASK="free -m";;
	   4) TASK="curl ifconfig.me";;
	   5) TASK="tokill";;
	   6) TASK="copyfile";;
	   7) TASK="backup_logs";;
           *) echo ERROR && exit 2;;
    esac
    if [ -n "$TASK" ]
    then
        clear
        $TASK
        break
    else
        echo INVALID CHOICE && exit 3
    fi
done
	
