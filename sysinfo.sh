#!/bin/bash 

#######

# THIS SCRIPT WILL OUTPUT ALL THE SYSINFO

echo "-----------------------"
echo ""
echo " SYSTEM INFO "
echo ""
echo "-----------------------"
 

echo " Host name :" $(hostname)
echo "-----------------------"

echo " current user :" $(whoami)
echo "-----------------------"

echo " current date and time :" $(date)
echo "-----------------------"

echo "system uptime :" $(uptime)
echo "-----------------------"
echo "-----------------------"

echo "Disk usage :" 
df -h /

echo "-----------------------"

echo " RAM usage :"

free -h

echo "-----------------script completed__________________" 
