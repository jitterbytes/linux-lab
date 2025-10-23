#!/bin/bash

outfile="system_status.txt"

echo "== SYSTEM STATUS ==" > "$outfile"

#CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
echo "CPU Usage: $cpu_usage%" >> "$outfile"

#free memory
mem_free=$(free -m | awk '/Mem:/ {print $4}')
echo "Free Memory: $mem_free MB" >> "$outfile"

#disk usage
disk_usage=$(df -h --output=pcent / | tail -l | tr -d ' %')
echo "Disk usage: $disk_usage%" >> "$outfile"

#warnings
if (( $(echo "$cpu_usage > 80" | bc -l) )); then
	echo "Warning: High CPU usage!" >> "$outfile"
fi

if  [ "$mem_free" -lt 200 ];then
	echo "Warning: Low Memory!" >> "$outfile"
fi



