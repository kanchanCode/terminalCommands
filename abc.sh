#!/bin/bash


 declare -a fullTime
 declare -a partTime

function dailyAndTotalWageOfFullTime(){
       #declare -a fullTime
       total=0
       totalHrs=0
       present=0
       absentDays=0
       partTimeDays=0
       ran=$(($RANDOM%3))
       for (( i = 0; i < 20; i++ ));
       do
               if (( $ran == 1 )); then
                       present=$(($present+1))
                       fullTime[$i]=160

               elif (( $ran == 2 )); then
                       partTimeDays=$(($partTimeDays+1))
                       fullTime[$i]=80
               else
                       absentDays=$(($absentDays+1))
               fi
       done
       for (( i = 0; i < 20; i++ ));
       do
               total=$(($total+$((fullTime[$i]))))
               echo -n "$((fullTime[$i]))  "
               totalHrs=$(($totalHrs+$((fullTime[$i]))))

       done

       echo ""
       echo "total presents are $present"
       echo "total wage of a full time employee of $present days is $total"
       
#       echo ""
 #      echo "total presents days for part time employees are $partTimeDays"
 #      echo "total wage for $presentDays days is $totalHrs"
  #     echo ""
   #    echo "total absent days for employees are $absent"
    #   echo "no earnings for absent days"        
}


dailyAndTotalWageOfFullTime
