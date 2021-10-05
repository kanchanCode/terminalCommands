#!/bin/bash/ -x
present=1     #number of present days
partTime=2
totalDays=20  #total number of working days
fullTimeWage=20 # full day Wage
totalWorkingHrs=100 
WorkingHours=0;
WorkingDays=0;
function checkWorkHrs(){ #in question it is getWorkHrs
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
declare -a dailywages;
declare -a dailytotal;
while [[ $WorkingHours -lt $totalWorkingHrs && $WorkingDays -lt $totalDays ]]
do
 empCheck=$((RANDOM%3))
 Hours="$(checkWorkHrs $empCheck)"
 WorkingHours=$(($WorkingHours+$Hours))
 dailywages[$WorkingDays]=$(($Hours*$fullTimeWage))
 ((WorkingDays++))
done
for((i=0;i<20;i++))
do
x=$(($i+1))
echo "Day "$x"   "${dailywages[$i]}
done
totalSalary=$(($WorkingHours*$fullTimeWage));
echo "total Salary "$totalSalary


