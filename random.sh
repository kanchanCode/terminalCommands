#!/bin/bash -x
sum=0;
average=0;
p=5;
echo "lower limit:"
read X
echo "upper limit:"
read Y
RANGE=$((Y-X+1))
RANDOM=$$
R1=$(($(($RANDOM%$RANGE))+X))
echo "random num1 is $R1";
R2=$(($(($RANDOM%$RANGE))+X))
echo "random num2 is $R2";
R3=$(($(($RANDOM%$RANGE))+X))
echo "random num3 is $R3";

R4=$(($(($RANDOM%$RANGE))+X))
echo "random num4 is $R4";

R5=$(($(($RANDOM%$RANGE))+X))

echo "random num5 is $R5"

sum=$((R1+R2+R3+R4+R5));
echo "sum  is $sum";
average=$($sum / $p|bc -l);
echo "average is $average";

