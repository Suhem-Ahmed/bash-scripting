#!/bin/bash 


####################
# author : suhem

# this script will back up /etc directory and backup file will be saved in /tmp/backups 

todays_date=$(date '+%Y-%m-%d')
backup_location="/tmp/backups"

if [ -d /tmp/backups ]
then
  echo "backup dirtory exists /tmp/backups "
else
 mkdir /tmp/backups
fi

tar -czf $backup_location/backup-$todays_date.tar.gz /etc

echo " Backup completed: $backup_location/backup-$todays_date.tar.gz "



