#
# Declare the array of 5 subscripts to hold 5 numbers
#
declare -a nos=(1 45 67 89 43)
#nos[0]=1
#nos[1]=56
#nos[2]=45
#nos[3]=98
#nos[4]=23

#
# Prints the number befor sorting
#
echo "Original Numbers in array:"
for (( i = 0; i <= 4; i++ ))
do
  echo ${nos[$i]}
done

#
# Now do the Sorting of numbers
#

for (( i = 0; i <= 4 ; i++ ))
do
   for (( j = $i; j <= 4; j++ ))
   do
      if [ ${nos[$i]} -gt ${nos[$j]}  ]; then
           t=${nos[$i]}
           nos[$i]=${nos[$j]}
           nos[$j]=$t
      fi
   done
done

#
# Print the sorted number
# 
echo -e "\nSorted Numbers in Ascending Order:"
for (( i=0; i <= 4; i++ )) 
do
  echo ${nos[$i]}
done
