#!/bin/bash 

##########################

# author: suhem

# description: this script will get you a menu to run other scripts 


while true
do 

 echo "=========================="
 echo "SERVER ADMIN MENU"
 echo "=========================="
 echo "1. Show system info"
 echo "2. Check disk usage"
 echo "3. List logged in users"
 echo "4. Show running processes"
 echo "5. Exit"
 echo "=========================="

 read -p "Enter your choice: " choice
 case $choice in 
  1) hostname && whoami && uptime ;;
  2) df -h / ;;
  3) who ;;
  4) ps aux ;;
  5) echo "Exit" 
     exit 0 ;;
  *) echo "invalid option, try again" ;; 
  esac

 echo "======complete=========="
 echo ""
 echo ""
done

echo "===========SCRIPT ENDED ==============="

