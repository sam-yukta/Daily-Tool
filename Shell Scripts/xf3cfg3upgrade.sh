#!/bin/bash
mac=$1
echo $mac
expect /root/getipeponmac.exp $mac
ip=$(grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' output.txt)
echo $ip
img=$2
echo $img > image.txt
echo "wget http://162.150.228.179:8080/Images/$img" > wgetcmd.txt
expect /root/test.exp $ip
