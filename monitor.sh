########################################################################
# File Name: monitor.sh
# Created Time: 2016年04月24日 星期日 16时09分29秒
#########################################################################
#!/bin/bash

clear 
if [[ $# -eq 0 ]]
then
				reset_terminal=$(tput sgr0)

				os=$(uname -o)
				echo -e '\e[32m' "Operating System Type : "  $reset_terminal $os

				os_name=$(cat /etc/issue | awk '{print $1 $2}')
				echo -e '\e[32m' "Check OS Release Version and name : "  $reset_terminal $os_name

				architecture=$(uname -m)
				echo -e '\e[32m' "Check Architecture : "  $reset_terminal $architecture

				kernerrelease=$(uname -r)
				echo -e '\e[32m' "Check Kernel Release : "  $reset_terminal $kernerrelease

				hostname=$(hostname)
				echo -e '\e[32m' "Hostname : "  $reset_terminal $hostname

				internalip=$(hostname -I)
				echo -e '\e[32m' "Check Internal IP : "  $reset_terminal $internalip

				externalip=$(curl -s http://ipecho.net/plain)
				echo -e '\e[32m' "Check External IP : "  $reset_terminal $externalip

				nameservers=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')
				echo -e '\e[32m' "Check DNS : "  $reset_terminal $nameservers

  			ping -c 2 www.baidu.com &> /dev/null && echo "Internet:Connected" || echo "Internet:Disconnected"

				who > a.log
				echo -e '\e[32m' "Logged In Users"  $reset_terminal && cat a.log
				rm -rf a.log

				system_mem_usages=$(awk '/MemTotal/{total=$2}/MemFree/{free=$2}END{print (total-free)/1024}' /proc/meminfo)
				echo -e '\e[32m' "system memuserages : "  $reset_terminal $system_mem_usages

				apps_mem_usages=$(awk '/MemTotal/{total=$2}/MemFree/{free=$2}/^Cached/{cached=$2}/Buffers/{buffers=$2}END{print (total-free-cached-buffers)/1024}' /proc/meminfo)
				echo -e '\e[32m' "apps memuserages : "  $reset_terminal $apps_mem_usages

				loadaverge=$(top -n 1 -b  | grep "load average" |awk '{print $10 $11 $12}')
				echo -e '\e[32m' "load averges : "  $reset_terminal $loadaverge

				diskaverge=$( df -Ph | grep -vE '文件系统|tmpfs|cgmfs|udev' | awk '{print $1 " " $5}')
				echo -e '\e[32m' "disk averges : "  $reset_terminal $diskaverge


fi

