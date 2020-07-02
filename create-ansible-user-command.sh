#!/bin/bash

#
#	This script creates a user 'ansibler01' in each remote node in inventory listed in ansible-hosts-nodes.txt
#	11-16-2019 - author Set Soto

for ssh_host in $(cat ansible-hosts-nodes.txt)
do
   echo $ssh_host
   printf	"\n \n _________________________________________________________________________________________________\n "
   ssh -o ConnectTimeout=2   root@$ssh_host 'hostname && uptime'
   printf  " \n ---------------------------------------------------------------------------------- \n \n"
   ssh -o ConnectTimeout=2   root@$ssh_host 'ls -ltr /home'
   printf  " \n ---------------------------------------------------------------------------------- \n \n"
   ssh -o ConnectTimeout=2   root@$ssh_host 'useradd -p $(openssl passwd -1 anypassword) ansibler01'
done

