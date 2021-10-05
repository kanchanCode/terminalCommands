#!/bin/bash/ -x

absent=0      #number of absent days
present=0     #number of present days
totalDays=31  #total number of working days

function toCheckAttendance(){ #function to check

 for (( i=1;i<totalDays;i++ )) # for loop will run from 1 to 30 days
 do
  ran=$(($RANDOM%2)) #it will take random number 0 or 1 
  if (( $ran==1 ));
   then
    echo "Day"$i" Present"
    present=$(($present+1))
  else
   echo "Day"$i" Absent"
   absent=$(($absent+1))
  fi
 done
 
echo "Total present days "$present
echo "Total absent days "$absent
}
toCheckAttendance
