#!/bin/bash -x

read -p "enter num " num;

if [ $num -lt 10 ]
 then
  echo "$num is less than 10";
else
  echo "$num is greater than 10";
fi
