#!/bin/bash

"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" clonevm "ubuntu20-server-template" --mode "machine" --name "ubuntu-managed-node-e"   --register
#"/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" clonevm "ubuntu20-server-template" --mode "machine" --name "ubuntu-managed-node-e"  --basefolder "C:\Users\anyuser\VirtualBox VMs\ubuntu-managed-node-e" --register
