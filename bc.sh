#########################################################################
# File Name: whoani.sh
# Created Time: 2016年03月10日 星期四 19时10分20秒
#########################################################################
#!/bin/bash

read -t 20 -p "Please input num1:"  num1
read -t 20 -p "Please input num2:"  num2
read -t 20 -p "Please input ope:"  ope 

if [ -n "$num1" -a -n "$num2" -a -n "ope" ]
then
		test1=$( echo $num1 | sed 's/[0-9]//g' )
		test2=$( echo $num2 | sed 's/[0-9]//g' )

		if [ -z "$test1" -a -z "$test2" ]
		then
				if [ "$ope" == '+' ]
				then
						sum=$(($num1+$num2))
				elif [ "$ope" == '-' ]
				then
						sum=$(($num1-$num2))
				elif [ "$ope" == '*' ]
				then 
						sum=$(($num1*$num2))
				elif [ "$ope" =='/' ]
				then
						sum=$(($num1/$num2))
				else
						echo 'ope is not the right symbol'
						exit 10
				fi
		else
				echo 'num1 or num2 is not number'
				exit 11
		fi
else
		echo 'num1 or num1 is empty'
		exit 12
fi

echo "$num1 $ope $num2 : $sum"











