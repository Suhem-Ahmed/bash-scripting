#!/bin/bash 

#########################
# author : suhem

# this script will check the service given in argument, if its active or not

services=("ssh" "cron" "ufw")

echo "checking if all services are running "

check_services() {

systemctl is-active --quiet $1
status=$?

if [ $status -eq 0 ]
then 
 echo " Service '$1' is active "
else
 echo "Service '$1' is inactive"

fi
}

for service in "${services[@]}"
do 
 check_services $service

done
