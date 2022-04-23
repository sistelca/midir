#!/bin/sh

VAR1=`/sbin/ip a l enp1s8 | grep "inet "`

input="/home/luis/cibercom/midir/ip.txt"

VAR2=`/bin/cat $input`

#echo "xd"
#echo $VAR1
#echo $VAR2

if [ "$VAR1" != "$VAR2" ]; then
    echo "$VAR1" > "/home/luis/cibercom/midir/ip.txt"
fi

if [ -n "$VAR1" ]; then
    /bin/git -C /home/luis/midir/ add .
    /bin/git -C /home/luis/midir/ commit -m "act ip"
    /bin/git -C /home/luis/midir/ push origin main
fi

