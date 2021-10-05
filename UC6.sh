#!/bin/bash/ -x
present=1     #number of present days
partTime=2
totalDays=20  #total number of working days
fullTimeWage=20 # full day Wage
totalWorkingHrs=100 
WorkingHours=0;
WorkingDays=0;
function checkWorkHrs(){
empCheck=$1
case $empCheck in 
     $present) 
           Hours=8
           ;;
     $partTime) 
           Hours=4
           ;;
        *) Hours=0
           ;;
esac
echo $Hours
}
declare -a wages;
while [[ $WorkingHours -lt $totalWorkingHrs && $WorkingDays -lt $totalDays ]]
do
 empCheck=$((RANDOM%3))
 Hours="$(checkWorkHrs $empCheck)"
 WorkingHours=$(($WorkingHours+$Hours))
 wages[$WorkingDays]=$(($Hours*$fullTimeWage))
 ((WorkingDays++))
done

totalSalary=$(($WorkingHours*$fullTimeWage));
echo "total Salary "$totalSalary
echo ${wages[@]}

























