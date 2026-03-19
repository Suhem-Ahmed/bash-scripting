#!/bin/bash 


###################################
# author : suhem 

# this script will check if the given user list exists in the system

users=("suhem" "msa" "root" "john" "alice" "daemon")


for user in "${users[@]}"

do 
 id "$user" &>/dev/null
 status=$?
 if [ $status -eq 0 ]
 then 
  echo "user : $user exists"
 else 
  echo "user : $user do not exits"

 fi


done 
