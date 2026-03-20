#!/bin/bash

# Author: suhem
# Description: Task 001 - Password Generator Script

echo "Welcome to the Password Generator Script!"
echo "Please enter the desired length of your password:"
read length

letters='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'

password() {
    local pass=""
    shuffled=$(echo $letters | fold -w1 | shuf | tr -d '\n')
    while [ ${#pass} -lt $length ]; do
        pass_gen=${shuffled:$((RANDOM % 62)):1}
        pass+=$pass_gen
    done
    echo "The generated password is: $pass"
}

while true; do
    echo "============================================="
    password
    echo "============================================="

    echo "Do you need a new password? (yes/no)"
    read response
    if [ "$response" = "no" ]; then
        echo "Okay, byee!"
        break
    else 
     echo "Press ENTER to keep the same length ($length) or enter a new length:"
     read new_length

     if [ -n "$new_length" ]; then   # -n means "not empty"
      length=$new_length           # user typed new length, update it
     else
      echo "Keeping the same length: $length"  # user just hit enter, keep same
     fi
    fi
done