#!/bin/bash/ -x

absent=0      #number of absent days
present=0     #number of present days
partTime=0
totalDays=31  #total number of working days
fullTimeWage=20 # full day Wage
partTimeWage=10
fullDay=8 #full day hour
partTimeHr=4 #part time hour
salary=0

function toCheckAttendance(){ #function to check

 for (( i=1;i<totalDays;i++ )) # for loop will run from 1 to 30 days
 do
  ran=$(($RANDOM%3)) #it will take random number 0 or 1 
  if (( $ran==1 ));
   then
    echo "Day"$i" Present"
    present=$(($present+1))
   elif (( $ran==2 ))
    then
    echo "Day"$i" PartTime"
    partTime=$(($partTime+1))
  else
   echo "Day"$i" Absent"
   absent=$(($absent+1))
  fi
 done
 
echo "Total present days "$present
echo "Total partTime days "$present
echo "Total absent days "$absent
}
toCheckAttendance

function toCalculateFullTimeDailyWage(){
 salary=$(($present*fullTimeWage*fullDay))
 echo "Fullday salary calculated "$salary 
}
toCalculateFullTimeDailyWage

function toCalculatePartTimeDailyWage(){
salary=$(($partTime*partTimeWage*partTime))
echo "Part time salary calculated "$salary 
}
toCalculatePartTimeDailyWage
