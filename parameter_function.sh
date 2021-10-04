#!/bin/bash -x

read -p "enter first value" num1
read -p "enter second value" num2

function new(){
a1=$1
a2=$2
sum=0
sum=$(($a1+$a2))

echo $sum
return $sum
}
new num1 num2
echo $?
