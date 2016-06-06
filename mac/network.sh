#########################################################################
#File Name:network.sh
#Created Time:2016-05-07 22:09:41
#########################################################################
#!/bin/bash
ping -c 3 www.baidu.com > /dev/null && echo "Network is Connected" || echo "Network is unConnected"
