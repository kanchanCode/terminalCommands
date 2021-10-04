#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=120;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;
totalEmpHrs=0;
totalWorkingDays=0;

function getWorkHrs(){
 empCheck=$1
 case $empCheck in
     $IS_FULL_TIME)
        empHrs=8
        ;;
     $IS_PART_TIME)
        empHrs=4
        ;;
      *)
        empHrs=0
        ;;
 esac
 echo $empHrs
}
declare -a dailyWage;
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH &&
         $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
    
    empCheck=$((RANDOM%3));
    empHrs="$(getWorkHrs $empCheck)"
    totalEmpHrs=$(($totalEmpHrs+$empHrs))
    dailyWage[$totalWorkingDays]=$(($empHrs*$EMP_RATE_PER_HR))
	((totalWorkingDays++))
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));
echo "total salary "$totalSalary
echo ${dailyWage[@]}

#function dailyAndTotalWageOfFullTime(){
#	declare -a fullTime
#	total=0
#	present=0
#	for (( i = 0; i < 20; i++ )); 
#       do
#		if (( $(($RANDOM%2)) == 1 )); then
#			present=$(($present+1))
#			fullTime[$i]=160
#
#		else
#			fullTime[$i]=0
#		fi
#	done
#	for (( i = 0; i < 20; i++ )); 
 #       do
#		total=$(($total+$((fullTime[$i]))))
#		echo -n "$((fullTime[$i]))  "
#	done
#	echo ""
#	echo "total presents are $present"
#	echo "total wage of a full time employee of $present days is $total"
#}
