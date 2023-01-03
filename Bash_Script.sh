#! /bin/bash
echo " Bash scripting "
echo " Author: Mohan "
echo " Namste"

echo "........................"
echo " Date and  Time"

CURRENTDATEONLY=`date +"%b %d, %Y"`
 
echo Current Date is: ${CURRENTDATEONLY}
echo Current Date and Time is: `date +"%Y-%m-%d %T"`

echo "............................"
currentUser=$(w)
echo "Current Users are:"
echo "$currentUser"

echo "............................."

echo "Disk Space: "
total=$(df -h|xargs|awk '{print $21}')
remaining=$(df -h|xargs|awk '{print $23}')
used=$(df -h|xargs|awk '{print $22}')
echo "Total space is : $total"
echo "Remaining space is : $remaining"
echo "Used space is: ($used)"


echo "........................................."

echo "Ram Space: "

totalRam=$(free | xargs | awk '{print $8}')
usedRam=$(free|xargs|awk '{print $9}')
remainingRam=$(free|xargs|awk '{print $10}')

echo "Total Ram is: $totalRam(Bytes)"
echo "Remaining ram is $remainingRam(Bytes)"
echo "Used Ram is: $usedRam(Bytes)"

echo "........................................"

echo "Top 5 CPU processes: "

processes=$(top|head -12 | tail -6)
echo "$processes"

echo "........................................"

echo " End "


