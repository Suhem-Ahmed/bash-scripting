#!/bin/bash 
##########################

# author: suhem

# description: when this script used, it will chech the server health

num=$((RANDOM % 100))

att=0
while true
do 
 read -p "🎮 Guess the number (1-100): " user_num
 att=$(($att + 1))
 echo "Total attempts : $att"
 if [ $user_num -gt $num ]
 then 
  echo "Too high! Try again."
 
 elif [ $user_num -lt $num ] 
 then 
  echo "Too low! Try again."
 
 else
 echo "✅ Correct! You got it in $att attempts!"
 exit 0

 fi

done
