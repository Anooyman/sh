#########################################################################
# File Name: case.sh
# Created Time: 2016年04月24日 星期日 14时46分08秒
#########################################################################
#!/bin/bash

read -t 30 -p "Please input yes/no: "  cho

case "$cho" in
		"yes")
				echo 'yes'
				;;
		"no")
				echo "no"
				;;
		*)
				echo 'else'
				;;
esac
