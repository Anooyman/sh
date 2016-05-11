#########################################################################
#File Name:stp.sh
#Created Time:2016-05-11 19:12:13
#########################################################################
#!/bin/bash

cd /home/anooy/graphviz/svg

b=${1}".png"

cp ${1}".svg" $b

chmod 644 $b

mv $b /home/anooy/graphviz/png


