#!/bin/bash
for filename in $(ls)
do
 ext=${filename##*\.}
 case "$ext" in
    sh)   echo "$filename : shell script file"
          ;;
    pdf)  echo "$filename : pdf file"
          ;;
    txt)  echo "$filename : Text file"
          ;;
    *)    echo "$filename : Not processed"
          ;;
 esac
done
