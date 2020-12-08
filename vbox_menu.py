'''
Python Menu for my Ansible VirtualBox VMs
12/07/2020 set.soto

'''

import os, subprocess

def file_read(fname):
        with open (fname, "r") as myfile:
                data=myfile.read().splitlines()
                #print(data)
                print(len(data))
                count=len(data)
                i=0
                while i < count:
                    num = i
                    option = data[i]
                    print(f'[{num}] - {option}')
                    i+=1
                pass

        answer = input("\n Turn ON or OFF for a answer or select by [ Number ]... or type 'allon' or 'alloff' for multiple VMs\n")
       
        print(answer)

        if answer == "ON" or answer == "on" or answer == "On":
            vm_index = int(input(' Which VM would you like to Power ON, select by number: '))
            chosen_vm = data[vm_index]
            print(chosen_vm)
            if  chosen_vm:
                chosen_vm = data[vm_index]
                cmd = (f'"c:/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm {chosen_vm}' ' --type headless')
                print(cmd)
                os.system(cmd)
        elif answer == "OFF" or answer == "off" or answer == "Off":
            vm_index = int(input(' Which VM would you like to Power OFF, select by number: '))
            chosen_vm = data[vm_index]
            print(chosen_vm)
            chosen_vm = data[vm_index]
            cmd = (f'"c:/Program Files/Oracle/VirtualBox/VBoxManage.exe" controlvm {chosen_vm}' ' poweroff')
            os.system(cmd)
        elif answer == "ALLON" or answer == "AllOn" or answer == "allon":
            i=0
            while i < count:
                num = i
                cmd = (f'"c:/Program Files/Oracle/VirtualBox/VBoxManage.exe" startvm {data[i]}' ' --type headless')
                os.system(cmd)
                i+=1
        elif answer == "ALLOFF" or answer == "AllOff" or answer == "alloff":
            i=0
            while i < count:
                num = i
                print(f' Powering OFF {data[i]} \n')
                cmd = (f'"c:/Program Files/Oracle/VirtualBox/VBoxManage.exe" controlvm {data[i]}' ' poweroff')
                os.system(cmd)
                i+=1
        else:
            print("I am at else")
        pass
    
file_read('ansible-hosts.txt')
pass
