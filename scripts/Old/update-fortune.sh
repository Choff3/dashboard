#!/bin/bash
file="/home/pi/messages/dailyfortune.txt"
rm $file
/usr/games/fortune >> $file
nlines=$(cat messages/dailyfortune.txt | wc -l)
if [[ $nlines -lt 5 ]]
then
  sed -i " " $file
  declare -i dif=$((5-$nlines))
  for ((i=1;i<=dif;i++));
  do
    echo "*" >> $file
  done
fi
