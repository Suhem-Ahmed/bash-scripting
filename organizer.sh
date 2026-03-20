#!/bin/bash 


##########################

# author: suhem

# description: when this script will filter and organize files

target="/tmp/test_files"

mkdir -p $target/images $target/docs $target/scripts $target/other


for file in $target/*
do 
 if [ -d "$file" ]; then
        continue    # skip directories, go to next item
 fi
 
 ext="${file##*.}"

 case $ext in
    jpg|png|gif) mv "$file" "$target/images/"
                 echo "📁 Moved $(basename $file) → images/" ;;
    txt|pdf|docx) mv "$file" "$target/docs/"
                  echo "📁 Moved $(basename $file) → docs/" ;;
    sh|py) mv "$file" "$target/scripts/"
           echo "📁 Moved $(basename $file) → scripts/" ;;
    *) mv "$file" "$target/other/"
       echo "📁 Moved $(basename $file) → other/" ;;
 esac
done