function dailyAndTotalWageOfPartTime(){
	declare -a partTime
	total=0
	present=0
	for (( i = 0; i < 20; i++ )); do
		if (( $(($RANDOM%2)) == 1 )); then
			present=$(($present+1))
			partTime[$i]=80

		else
			partTime[$i]=0
		fi
	done
	for (( i = 0; i < 20; i++ )); do
		total=$(($total+$((partTime[$i]))))
		echo -n "$((partTime[$i]))  "
	done
	echo ""
	echo "total presents are $present"
	echo "total wage of a part time employee of $present days is $total"
}
#dailyAndTotalWageOfPartTime


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


#dailyAndTotalWageOfFullTime

read -p "enter your choice 1 or 2 " choice

case "$choice" in
 1)  dailyAndTotalWageOfFullTime
  ;;
 2) dailyAndTotalWageOfPartTime
  ;;
 *) echo " enter the valid choice"
  ;;
esac

 
