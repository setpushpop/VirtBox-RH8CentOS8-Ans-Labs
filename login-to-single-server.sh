#!/bin/bash
printf	"\n ================================================================= \n"
printf	"Which HOST do you want to SSH to, choose number \n \n"
printf	"____________________________________________________________________ \n \n"
printf	"[ 1 ] rh8-ansible-master01 \t \t 	[ 5 ] rh8-server-a \t \t	[ 9 ] aws \n \n"
printf	"[ 2 ] rh8-server-dns01 \t \t \t	[ 6 ] rh8-server-b \n \n"
printf  "[ 3 ] rh8-server-dns02 \t \t \t	[ 7 ] centos8-server-c \n \n"
printf  "[ 4 ] centos8-server-sandbox05 \t \t \t[ 8 ] centos8-server-d \n \n"
printf	"____________________________________________________________________ \n \n"
printf	"Type x to exit or cancel: \t "

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
        echo "April - You are connecting to HOSTNAME: centos8-server-sandbox05"
        ssh  -o ConnectTimeout=3   root@centos8-server-sandbox05
        ;;
    5)
        echo "May - You are connecting to HOSTNAME: rh8-server-a"
        ssh  -o ConnectTimeout=3   root@rh8-server-a
        ;;
    6)
        echo "June - You are connecting to HOSTNAME: centos8-server-b"
        ssh  -o ConnectTimeout=3   root@rh8-server-b
        ;;
    7)
        echo "July - You are connecting to HOSTNAME: centos8-server-c"
        ssh  -o ConnectTimeout=3   root@centos8-server-c
        ;;
    8)
        echo "August - You are connecting to HOSTNAME: centos8-server-d"
        ssh  -o ConnectTimeout=3   root@centos8-server-d
        ;;
    9)
        echo "August - You are connecting to HOSTNAME: aws"
        ssh  -o ConnectTimeout=3   ec2-user@aws
	;;
   # 5), 6) etc.
    *) # anything else
        echo "No selection, exiting"
        ;;
esac
