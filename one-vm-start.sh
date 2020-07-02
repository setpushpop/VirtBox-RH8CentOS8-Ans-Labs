#!/bin/bash
printf	"\n ================================================================= \n"
printf	"Which VirtualBox VM HOST do you wish to Power ON and START \n \n"
printf	"____________________________________________________________________ \n \n"
printf	"[ 1 ] rh8-ansible-master01 \t \t 	[ 5 ] rh8-server-a \n \n"
printf	"[ 2 ] rh8-server-dns01 \t \t \t	[ 6 ] rh8-server-b \n \n"
printf  "[ 3 ] rh8-server-dns02 \t \t \t	[ 7 ] centos8-server-c \n \n"
printf  "[ 4 ] centos8-server-sandbox05 \t \t \t[ 8 ] centos8-server-d \n \n"
printf	"____________________________________________________________________ \n \n"
printf	"Type x to exit or cancel: \t "

read input_variable

case $input_variable in
    1)
        echo "January - You wish to Power ON and START HOSTNAME: rh8-ansible-master01"
        #ssh  -o ConnectTimeout=3   root@rh8-ansible-master01
	"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "rh8-ansible-master01" --type headless
        ;;
    2)
        echo "February - You wish to Power ON and START HOSTNAME: rh8-server-dns01"
        #ssh  -o ConnectTimeout=3   root@rh8-server-dns01
	"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "rh8-server-dns01" --type headless
        ;;
    3)
        echo "March - You wish to Power ON and START HOSTNAME: rh8-server-dns02"
        #ssh  -o ConnectTimeout=3   root@rh8-server-dns02
	"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "rh8-server-dns02" --type headless
        ;;
    4)
        echo "April - You wish to Power ON and START HOSTNAME: centos8-server-sandbox05"
        #ssh  -o ConnectTimeout=3   root@centos8-server-sandbox05
	"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "centos8-server-sandbox05" --type headless
        ;;
    5)
        echo "May - You wish to Power ON and START HOSTNAME: rh8-server-a"
        #ssh  -o ConnectTimeout=3   root@rh8-server-a
	"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "rh8-server-a" --type headless
        ;;
    6)
        echo "June - You wish to Power ON and START HOSTNAME: centos8-server-b"
        #ssh  -o ConnectTimeout=3   root@rh8-server-b
	"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "centos8-server-b" --type headless
        ;;
    7)
        echo "July - You wish to Power ON and START HOSTNAME: centos8-server-c"
        #ssh  -o ConnectTimeout=3   root@centos8-server-c
	"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "centos8-server-c" --type headless
        ;;
    8)
        echo "August - You wish to Power ON and START HOSTNAME: centos8-server-d"
        #ssh  -o ConnectTimeout=3   root@centos8-server-d
	"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "centos8-server-d" --type headless
        ;;
   # 5), 6) etc.
    *) # anything else
        echo "No selection, will NOT power on any VM, exiting"
        ;;
esac



