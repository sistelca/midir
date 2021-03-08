#!/bin/sh

/sbin/ifconfig  eth0 | grep "inet:" > /home/luis/midir/ip.txt
cd /home/luis/midir/
git add .
git commit -m "act ip"
git push origin main
cd /home/luis/
 
