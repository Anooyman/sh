#########################################################################
#File Name:connect.sh
#Created Time:2016-05-07 22:11:57
#########################################################################
#!/bin/bash
mentohust;kill -9 $a={ps aux | grep mentohust | grep -v grep | awk '{print $2}'};mentohust -b1
