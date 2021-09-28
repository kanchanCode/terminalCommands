#!/bin/bash -x

isPresent=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$((RANDOM%3));
salary=0;

if [ $isFullTime -eq $randomCheck ];
then
 empHrs=8; 
elif [ $isPresent -eq $randomCheck ];
then
  empHrs=8;
else
  empHrs=0;
fi 

salary=$(($empHrs*$empRatePerHr));
echo "salary is $salary";
