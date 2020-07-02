#!/bin/bash

#printf	"\n \n _________________________________________________________________________________________________\n \n"
#ssh  -o ConnectTimeout=2   root@rh8-ansible-master01 'hostname && uptime'
#printf	"---------------------------------------------------------------------------------- \n \n"
#ssh  -o ConnectTimeout=2   root@rh8-ansible-master01 'rpm -qa | grep -i python3-libselinux'
#printf	"\n \n"
#ssh  -o ConnectTimeout=2   root@rh8-ansible-master01 'python3 --version'

#$user=root

for ssh_host in $(cat hosts-ansible)
do
   echo $ssh_host
   printf	"\n \n _________________________________________________________________________________________________\n "
   ssh -o ConnectTimeout=2   root@$ssh_host 'hostname && uptime'
   printf  " \n ---------------------------------------------------------------------------------- \n \n"
   ssh -o ConnectTimeout=2   root@$ssh_host 'cat /etc/hosts && ls /home/'
#   ssh -o ConnectTimeout=2   root@$ssh_host 'echo awsserver IP >> /etc/hosts'
#   ssh -o ConnectTimeout=2   root@$ssh_host 'sed -i '$ d' /etc/hosts'
#   printf  " \n ---------------------------------------------------------------------------------- \n \n"
#   ssh -o ConnectTimeout=2   root@$ssh_host 'ls -ltr /home/'
#   printf  " \n ---------------------------------------------------------------------------------- \n \n"
#   ssh -o ConnectTimeout=2   root@$ssh_host 'useradd -m ansadmin -p anypassword'
#   ssh -o ConnectTimeout=2   root@$ssh_host "echo 'ansadmin:anypassword' | chpasswd"
#   ssh -o ConnectTimeout=2   root@$ssh_host 'useradd -p $(openssl passwd -1 anypassword) ansolo'
#   printf  " \n ---------------------------------------------------------------------------------- \n \n"
#   ssh -o ConnectTimeout=2   root@$ssh_host 'ls -ltr /home/'
done

