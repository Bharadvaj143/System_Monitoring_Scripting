#!bin/bash

#get the CPU , Memory and Disk uasge
cpu_usage=$(top -bn l | grep "Cpu(s)" | awk '{print $2 + $4}')
memory_usage=$(free -m | grep Mem | awk '{print $3}')
disk_usage=$(df -h / | tail -l | awk '{print $5}')

#Display system usage information
echo "CPU Usage : $cpu_usage%"
echo "Memory Usage : $memory_usage MB "
echo "Disk space : $disk_usage"