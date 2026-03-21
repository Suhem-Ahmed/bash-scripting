#!/bin/bash

# Author: suhem
# Description: This script generates a system user report


exec > >(tee /tmp/user_report.txt)
location="/etc/passwd"

echo "System User Report"
echo "------------------"

s=$(awk -F: '$3 >= 999 {print "user:  " $1, "      " "home_location:   " $6}' $location)
echo "$s"

echo "------------------"
echo "Total number of system users: $(echo "$s" | wc -l)"


echo "$s" | grep -c "user:"