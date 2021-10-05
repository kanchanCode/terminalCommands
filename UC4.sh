#!/bin/bash/ -x

absent=0      #number of absent days
present=0     #number of present days
partTime=0
totalDays=31  #total number of working days
fullTimeWage=20 # full day Wage
partTimeWage=10
fullDay=8 #full day hour
partTimeHr=4 #part time hour

totalSalary=0;

function usingSwitchCase(){
for (( i=1;i<totalDays;i++ )) # for loop will run from 1 to 30 days
do
ran=$(($RANDOM%3))
case "$ran" in
 1) echo "Day"$i" Present"
    present=$(($present+1))
    ;;
 2) echo "Day"$i" PartTime"
    partTime=$(($partTime+1))
    ;;
 *) echo "Day"$i" Absent"
    absent=$(($absent+1))
    ;;
esac
 
done
 echo "Total present days "$present
 echo "Total partTime days "$partTime
 echo "Total absent days "$absent
 }
usingSwitchCase




