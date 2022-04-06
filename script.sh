#!/bin/bash

a=`cat action.txt | sed '/^$/d' | wc -l`

a=`echo "${a:(-1)}"`

sum=$(($a%2))

if [ $sum = 0 ]
then
		echo "success"
	else
			echo "fail"
		fi

