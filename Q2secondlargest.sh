#!/bin/bash -x


temp=0;
declare -a ARRAY1
for i in  {1..10}
do
	x=$((($RANDOM%900)+100))
	ARRAY1[i]=$x
done

echo ${ARRAY1[*]}


for (( i = 1; i <= 10 ; i++ ))
do
   #echo $i
    #echo ${ARRAY1[$i]}
   for (( j = $i; j <= 10; j++ ))
   do
    #echo $j
    #echo ${ARRAY1[$j]}
      if [ ${ARRAY1[$i]} -gt ${ARRAY1[$j]}  ]; then
           t=${ARRAY1[$i]}
           ARRAY1[$i]=${ARRAY1[$j]}
           ARRAY1[$j]=$t
      fi
   done
done

#for ((j = 0; j <= 10; j++))
#do
 # for ((k = $j; k <= 10; k++))
  #do
   # if [ ${ARRAY1[$j]} -gt ${ARRAY1[$k]} ];
    # then
     #   temp=${ARRAY1[$j]}
      #  ARRAY1[$j]=${ARRAY1[$k]}
       # ARRAY1[$k]=$temp
   #fi
  #done

#done 

echo "Array in sorted order :"
for (( i=0; i <= 10; i++))
do
 echo ${ARRAY1[$i]}
done

echo "Largest number is "${ARRAY1[10]}
echo "Second largest number is "${ARRAY1[9]} 
echo "Smallest number is "${ARRAY1[1]}
echo "Second smallest number is "${ARRAY1[2]}


