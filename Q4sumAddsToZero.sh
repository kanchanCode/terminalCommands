#!/bin/bash -x

#read -p "enter the size of array " size
declare -a arr=(1 2 3 98 0 -98 0)

#START=-100
#END=100
#num=0;

#for((j=0; j<$size; j++))
#do
# num=$(($RANDOM%$(($END-$START+1))+$START))
# arr[j]=$num
#done
#echo -e "random numbers are between the given range is \n""[ "${arr[*]}" ]"

#echo $((${#arr[@]}-3))
for((i=0;i<$((${#arr[@]}-3));i++))
do
 for((j=0;j<$((${#arr[@]}-2));j++))
 do
  for((k=0;k<$((${#arr[@]}-1));k++))
   do
    sum=$((${arr[$i]}+${arr[$j]}+${arr[$k]}))
    #echo $sum
    if [ $sum -eq 0 ];then
    echo "Sum of three numbers adds to zero are "${arr[$i]}"+" ${arr[$j]}"+"${arr[$k]}
    fi
   done
 done
done
