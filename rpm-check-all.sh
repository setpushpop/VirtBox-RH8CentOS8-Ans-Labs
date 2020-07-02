#!/bin/bash

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@rh8-ansible-master01 'hostname && uptime'
printf	"---------------------------------------------------------------------------------- \n \n"
ssh  -o ConnectTimeout=2   root@rh8-ansible-master01 'rpm -qa | grep -i python3-libselinux'
printf	"\n \n"
ssh  -o ConnectTimeout=2   root@rh8-ansible-master01 'python3 --version'

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-dns01 'hostname && uptime'
printf	"---------------------------------------------------------------------------------- \n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-dns01 'rpm -qa | grep -i python3-libselinux'
printf	"\n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-dns01 'python3 --version' 

printf	"\n \n _________________________________________________________________________________________________\n \n"
#ssh  -o ConnectTimeout=2   root@rh8-server-dns02 'hostname && uptime'
printf	"---------------------------------------------------------------------------------- \n \n"
#ssh  -o ConnectTimeout=2   root@rh8-server-dns02 'rpm -qa | grep -i python3-libselinux'
printf	"\n \n"
#ssh  -o ConnectTimeout=2   root@rh8-server-dns02 'python3 --version'

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-a 'hostname && uptime'
printf	"---------------------------------------------------------------------------------- \n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-a 'rpm -qa | grep -i python3-libselinux '
printf	"\n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-a 'python3 --version'

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-b 'hostname && uptime'
printf	"---------------------------------------------------------------------------------- \n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-b 'rpm -qa | grep -i python3-libselinux'
printf	"\n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-b 'python3 --version'

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-c 'hostname && uptime'
printf	"---------------------------------------------------------------------------------- \n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-c 'rpm -qa | grep -i python3-libselinux'
printf	"\n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-c 'python3 --version'

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-d 'hostname && uptime'
printf	"---------------------------------------------------------------------------------- \n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-d 'rpm -qa | grep -i python3-libselinux'
printf	"\n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-d 'python3 --version'

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-sandbox05 'hostname && uptime'
printf	"---------------------------------------------------------------------------------- \n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-sandbox05 'rpm -qa | grep -i python3-libselinux'
printf	"\n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-sandbox05 'python3 --version'


