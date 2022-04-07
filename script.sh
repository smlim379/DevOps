#!/bin/bash
latest_file=$(ls -t | head -n 1)
a=`cat ${latest_file} | sed '/^$/d' | wc -l`
a=`echo "${a:(-1)}"`
sum=$(($a%2))
if [ $sum = 0 ]
	    then
		             echo "success"
			          else
					              return `failure()`          
