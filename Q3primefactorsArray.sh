#!/bin/bash -x
declare -a prime
read -p "Enter a number " num

for (( i=2; $num>1; i++ ))
do
 while [ $(($num % $i)) -eq 0 ]
 do 
   echo $i" "$num
   num=$(($num/$i));
   prime[i]=$i
   
 done
done
echo Prime factors are ${prime[*]}
 

