#!/bin/bash 

##########################

# author: suhem

# description: log analyzer for given log file


log_file="/tmp/server.log"

if [ ! -f $log_file ] 
then 
 echo "did not find the log file"
 exit 1
fi

echo "file preset, analyzing the log file : $log_file"
n_lines=$(wc -l < $log_file)
n_errors=$(grep -c "ERROR" $log_file)
n_WARNING=$(grep -c "WARNING" $log_file)
errors_line=$(grep "ERROR" $log_file)

echo "Total lines : $n_lines"
echo "Total errors : $n_errors"
echo "Total warings : $n_WARNING"

echo "--- ERROR LINES ------"
echo "$errors_line"
