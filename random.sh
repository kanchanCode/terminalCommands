#!/bin/bash -x

for((i=1;i<=3;i++));
do
a=$(($RANDOM%99));
echo "number is $a"; 
if [ $a -lt 50 ]
 then
   for((num=0;num==$a;num++));
   do
    sum=$(($sum+$a))
    echo "sum is $sum";
   done
 else
   echo "$a is greater than 10";
 fi
done
