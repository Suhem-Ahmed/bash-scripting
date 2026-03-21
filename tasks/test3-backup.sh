#!/bin/bash 

# author : suhem

# description : This script creates a backup of the /bash-scripting directory and saves it to the /backup directory with a timestamp.   


backup_location="/tmp/smart_backups"
mkdir -p "$backup_location"

timestamp=$(date '+%Y-%m-%d_%H:%M:%S')

tar -czf $backup_location/backup_$timestamp.tar.gz -C ~ bash-scripting

echo "Backup completed: $backup_location/backup_$timestamp.tar.gz"

total_backups=$(ls -1 $backup_location/backup_*.tar.gz | wc -l)

if [ $total_backups -gt 3 ]; then
    oldest_backup=$(ls -1t $backup_location/backup_*.tar.gz | tail -n 1)
    rm "$oldest_backup"
    echo "Deleted oldest backup: $oldest_backup"
fi

