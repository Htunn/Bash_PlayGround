#!/usr/bin/bash
# this script is used to count files in directory
echo which directory do you want to count?
read DIR
cd $DIR
COUNTER=0

for i in *
do
	COUNTER=$((COUNTER+1))
done

# count files
echo I have counted $COUNTER files in this directory

# their respective disk usage are
echo '##### Their respective disk usages are ####'
for i in *
do 
	ls -sh $i
done

# total disk usage 
echo '## Total disk space usage ##'
du -sh $DIR
