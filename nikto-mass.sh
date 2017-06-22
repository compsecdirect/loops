#!/bin/dash
# Name: Nikto-Mass
# Purpose: Read CSV, delimited file with hostname,ip, run nikto and generate xml output files for Dradis input
# Version 0.1
# Updated: June 21, 2017
# Author: @jfersec
# Usage: run msfconsole, services -S http -o your-output-file
# awk -F "," '{print $1","$2}' your-output-file > host-ip-file
# sed 's/\"//g' -i host-ip-file ; sed 's/host,port//g' -i host-ip-file
# now formated, run script with host-ip-file as input to argv
while IFS=, read i p
do
        bash -c "nikto -nointeractive -h $i -o nikto-$i.xml -Format xml -p $p &" > /dev/null 2
done < $1
