#!/bin/sh

i=1
j=1

read a
read b

if [ $a -lt 1 ] || [ $a -gt 9 ] || [ $b -lt 1 ] || [ $b -gt 9 ]
then
	echo "wrong input"
	exit 0
fi
while [ "$i" -le $a ]
do
	j=1
	while [ "$j" -le $b ]
	do
		printf "%d x %d = %d " $i $j $(($i * $j))
		j=$((j+1))
	done
	printf "\n"
	i=$((i+1))
done

exit 0
