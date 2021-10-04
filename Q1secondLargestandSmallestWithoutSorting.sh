#!/bin/bash -x
temp=0;
first=0
second=0;
declare -a ARRAY1
for i in  {1..10}
do
	x=$((($RANDOM%900)+100))
	ARRAY1[i]=$x
done
echo ${ARRAY1[*]}

for((i=1; i<10; ++i))
do
 if [ $first -lt ${ARRAY1[$i]} ]
 then
   second=$first
   first=${ARRAY1[i]}
 
 elif [[ ${ARRAY1[$i]} -gt $second && ${ARRAY1[$i]} -ne $first ]] 
 then
    second=${ARRAY1[i]};
 fi   
done
echo "second largest " $second


for((i=1; i<10; ++i))
do
 if [  ${ARRAY1[$i]} -lt $first ]
 then
   second=$first
   first=${ARRAY1[i]}
 
 elif [[ ${ARRAY1[$i]} -lt $second && ${ARRAY1[$i]} -ne $first ]] 
 then
    second=${ARRAY1[i]};
 fi   
done
echo "second smallest is "$second

