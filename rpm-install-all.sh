#!/bin/bash

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@rh8-ansible-master01 'hostname && uptime'
printf	".......................................................... \n \n"
ssh  -o ConnectTimeout=2   root@rh8-ansible-master01 'dnf install python36 -y'

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-dns01 'hostname && uptime'
printf	".......................................................... \n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-dns01 'dnf install python36 -y'

printf	"\n \n _________________________________________________________________________________________________\n \n"
#ssh  -o ConnectTimeout=2   root@rh8-server-dns02 'hostname && uptime'
printf	".......................................................... \n \n"
#ssh  -o ConnectTimeout=2   root@rh8-server-dns02 'dnf install python36 -y'

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-a 'hostname && uptime'
printf	".......................................................... \n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-a 'dnf install python36 -y '

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-b 'hostname && uptime'
printf	".......................................................... \n \n"
ssh  -o ConnectTimeout=2   root@rh8-server-b 'dnf install python36 -y'

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-c 'hostname && uptime'
printf	".......................................................... \n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-c 'dnf install python36 -y'

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-d 'hostname && uptime'
printf	".......................................................... \n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-d 'dnf install python36 -y'

printf	"\n \n _________________________________________________________________________________________________\n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-sandbox05 'hostname && uptime'
printf	".......................................................... \n \n"
ssh  -o ConnectTimeout=2   root@centos8-server-sandbox05 'dnf install python36 -y'
