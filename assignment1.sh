#!/bin/sh

i=1
j=1


if [ $1 -lt 1 ] || [ $1 -gt 9 ] || [ $2 -lt 1 ] || [ $2 -gt 9 ]
then
	echo "wrong input"
	exit 0
fi
while [ "$i" -le $1 ]
do
	j=1
	while [ "$j" -le $2 ]
	do
		printf "%d x %d = %d " $i $j $(($i * $j))
		j=$((j+1))
	done
	printf "\n"
	i=$((i+1))
done

exit 0
