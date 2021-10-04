#!/bin/bash/ -x
declare -a arr
START=0;
END=100;
num=0;
for((i=$START;i<=$END;i++))
do
arr[i]=$i
#echo ${arr[*]}
if [[ $(($((arr[$i]))%11)) == 0 ]]
then
 declare -a repeat
 repeat[i]=${arr[i]}
 echo ${repeat[i]}
 #echo ${arr[i]}

fi
done







#declare -a ARRAY1
#for i in  {1..10}
#do
#	x=$((($RANDOM%900)+100))
#	ARRAY1[i]=$x
#done
#echo ${ARRAY1[*]}
