#!/bin/sh

i=1
j=1

while [ "$i" -le 9 ]
do
	j=1
	while [ "$j" -le 9 ]
	do
		echo $i" x "$j = expr $(($i * $j))
		j=$((j+1))
	done
	i=$((i+1))
done

exit 0
