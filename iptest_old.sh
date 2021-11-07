#!/bin/sh

/sbin/ip a l enp0s7 | grep "inet " > /home/luis/cibercom/midir/ip.txt
cd /home/luis/cibercom/midir/
git add .
git commit -m "act ip"
git push origin main
cd /home/luis/
# chan chan 
