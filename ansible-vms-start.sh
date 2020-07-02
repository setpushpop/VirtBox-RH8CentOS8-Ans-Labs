#!/bin/bash

"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "rh8-ansible-master01" --type headless
"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "rh8-server-dns01" --type headless
"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "rh8-server-a" --type headless
"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "rh8-server-b" --type headless
"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "centos8-server-c" --type headless
"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "centos8-server-d" --type headless

#"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm "ubuntu-managed-node-e" 

