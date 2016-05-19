#!/bin/sh

sudo ipfw add pipe 1 ip from any to http://www.baidu.com out
sudo ipfw add pipe 2 ip from http://www.baidu.com to any in
sudo ipfw pipe 1 config delay 250ms bw 16Kbit/s queue 4Kbytes
sudo ipfw pipe 2 config delay 250ms bw 16Kbit/s queue 4Kbytes


#reset configured:
#ipfw -f flush