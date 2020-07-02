#!/bin/bash

printf	"Which HOST do you want to SSH to, choose number \n \n"
printf	"[ 1 ] rh8-ansible-master01 \n"
printf	"[ 2 ] rh8-server-dns01 \n" 
printf  "[ 3 ] rh8-server-dns02 \n"
printf  "[ 4 ] rh8-server-a \n"
printf  "[ 5 ] rh8-server-b \n"
printf  "[ 6 ] centos8-server-c \n"
printf	"[ 7 ] centos8-server-d \n"
printf	"[ 8 ] centos8-server-sandbox05 \n"

read input_variable

case $input_variable in
    1)
        echo "January - You are connecting to HOSTNAME: rh8-ansible-master01"
        ssh  -o ConnectTimeout=3   root@rh8-ansible-master01
        ;;
    2)
        echo "February - You are connecting to HOSTNAME: rh8-server-dns01"
        ssh  -o ConnectTimeout=3   root@rh8-server-dns01
        ;;
    3)
        echo "March - You are connecting to HOSTNAME: rh8-server-dns02"
        ssh  -o ConnectTimeout=3   root@rh8-server-dns02
        ;;
    4)
        echo "April - You are connecting to HOSTNAME: rh8-server-a"
        ssh  -o ConnectTimeout=3   root@rh8-server-a
        ;;
    5)
        echo "May - You are connecting to HOSTNAME: rh8-server-b"
        ssh  -o ConnectTimeout=3   root@rh8-server-b
        ;;
    6)
        echo "June - You are connecting to HOSTNAME: centos8-server-c"
        ssh  -o ConnectTimeout=3   root@centos8-server-c
        ;;
    7)
        echo "July - You are connecting to HOSTNAME: centos8-server-d"
        ssh  -o ConnectTimeout=3   root@centos8-server-d
        ;;
    8)
        echo "August - You are connecting to HOSTNAME: centos8-server-sandbox05"
        ssh  -o ConnectTimeout=3   root@centos8-server-sandbox05
        ;;
   # 5), 6) etc.
    *) # anything else
        echo "not recognised"
        ;;
esac



