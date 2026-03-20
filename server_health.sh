#!/bin/bash 

date=$(date "+%Y-%m-%d")
exec > >(tee /tmp/${date}_health_report.log)

##########################

# author: suhem

# description: when this script used, it will chech the server health

print_section() {
  echo "==========  $1  =============="
}

print_section "DISK USAGE"
bash ~/bash-scripting/disk-space.sh

echo ""

print_section "System Info Section"
bash ~/bash-scripting/sysinfo.sh

echo ""

print_section " service check"
bash ~/bash-scripting/service_monitor.sh

echo ""

print_section " TOP 5 process"
ps aux --sort=-%cpu | head -6

echo "Report saved to /tmp/${date}_health_report.log "

