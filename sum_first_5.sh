#bin/bash
#sum of first five

arr=(1 2 3 4 5 6 7 8 9 0)
for i in ${arr[@]:0:5}
do 
   echo $i
   sum = `expr $sum +$i`
done

echo $sum