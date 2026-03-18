#!/bin/bash 

# THIS SCRIPT WILL SHOW THE DISK USAGE ALL TIME

current_disk=$(df -h / | awk 'NR==2 {print $5}')
current_disk_clean=${current_disk//%/}


if [ $current_disk_clean -ge 80 ]
then 
  echo "WARNING: Disk usage is at $current_disk. Please clean up!"

else
 echo " Disk space is okay. Current usage: $current_disk"

fi


