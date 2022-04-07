#!/bin/bash
file="/home/pi/messages/dailyfortune.txt"
tempfile="/home/pi/messages/forttemp.txt"
rm $file
rm $tempfile
/usr/games/fortune >> $tempfile

fold -w 39 -s $tempfile >> $file

nlines=$(cat $file | wc -l)

while [ $nlines -gt 5 ]
do
  rm $file
  /usr/games/fortune >> $file
  nlines=$(cat $file | wc -l)
done

dif=$(( 5 - nlines ))
for ((i=1;i<=$dif;i++));
do
  echo " " >> $file
done