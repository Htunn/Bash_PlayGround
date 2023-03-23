#!/usr/bin/env bash
# run tar command and dump data to tape
tar -cvf /dev/st0 /wwww /home 2>/dev/null

#Okay find out if tar was a success or a failure
[ $? -eq 0 ] && status="Success!" || status="Failed!"

#write email to admin
mail -s "Backup Status" htunnthuthu.linux@gmail.com<<EOF

The Backup is finished.

End date: $(date)
Hostname: $(hostname)
Status: $status

EOF

