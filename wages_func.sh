#!/bin/bash -x

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
       
       echo ""
       echo "total presents days for part time employees are $partTimeDays"
       echo "total wage for $presentDays days is $totalHrs"
       echo ""
       echo "total absent days for employees are $absent"
       echo "no earnings for absent days"        
}

   #dailyAndTotalWageOfFullTime

#function dailyAndTotalWageOfPartTime(){
#         declare -a partTime
#         totalHrs=0;
#         presentDays=0;
#         for (( j = 0; j < 20; j++ ));
#         do
#         if (( $(($RANDOM%2)) == 1 ));
#         then
#               presentDays=$(($presentDays+1))
#               partTime[$j]=80
#         else
#               partTime[$j]=0
 #        fi
#        done
#
#         for (( j = 0; j < 20; j++ ));
#         do
#               totalHrs=$(($totalHrs+$((partTime[$j]))))
#               echo -n "$((partTime[$j]))   "
#         done
#         echo ""
#         echo "total presents days for part time employees are $presentDays"
#         echo "total wage for $presentDays days is $totalHrs"
#         #dailyAndTotalWageOfFullTime
#}
#dailyAndTotalWageOfPartTime


#function dailyAndTotalWageOfAbsent(){
#         totalHrs=0;
#         absentDays=0;
#         for (( j = 0; j < 20; j++ ));
#         do
#         if (( $(($RANDOM%2)) == 1 ));
#         then
#               absentDays=$(($absentDays+1))
#         fi
#         done
#         echo ""
#         echo "total absent days for employees are $absentDays"
#         echo "no earnings for absent days"
#        #dailyAndTotalWageOfFullTime
#}
dailyAndTotalWageOfFullTime
#dailyAndTotalWageOfPartTime
#dailyAndTotalWageOfAbsent
