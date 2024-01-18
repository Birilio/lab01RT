#!/bin/bash
while true
  do
  cpuTemp0=$(cat /sys/class/thermal/thermal_zone0/temp)
  cpuTemp1=$(($cpuTemp0/1000))
  cpuTemp2=$(($cpuTemp0/100))
  cpuTempM=$(($cpuTemp2 %$cpuTemp1))
  clear
  echo "CPU temp=$cpuTemp1.$cpuTempM'C"
  echo "GPU $(/opt/vc/bin/vcgencmd measure_temp)"
  sleep 5
done
