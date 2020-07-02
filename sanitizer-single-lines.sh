#!/bin/bash
printf  "\n ================================================================= \n"
printf  "This will remove or add whatever to the third Octet from 10.10._.x Address to specified files one at a time, create a backup, and move .bak to /tmp/baks/ \n \n"
printf  "\n \n"
printf  "What would you like to do!? \n \n"
printf  "____________________________________________________________________ \n \n"
printf  "\n \n"
printf  "[ 1 ] Sanitize (replace .9 with underscores) \t \t       [ 2 ] Dirtify (replace ._ with Several Nines, remove underscores) \n \n"
printf  "____________________________________________________________________ \n \n"
printf  "Type x to exit or cancel: \t "


read input_variable

case $input_variable in
    1)	echo "Sanitizing removing Nines: install-rpm-all.sh, one-vm-poweroff.sh, reboot-all.sh"
        sed -i.bak 's/\.9/\.\_/g' install-rpm-all.sh
        sed -i.bak 's/\.9/\.\_/g' one-vm-poweroff.sh
        sed -i.bak 's/\.9/\.\_/g' reboot-all.sh
	;;

    2)  echo "Dirtifying adding Nines: install-rpm-all.sh, one-vm-poweroff.sh, reboot-all.sh"
        sed -i.bak 's/\.\_/\.9/g' install-rpm-all.sh
        sed -i.bak 's/\.\_/\.9/g' one-vm-poweroff.sh
        sed -i.bak 's/\.\_/\.9/g' reboot-all.sh
	;;
    
    *) # anything else
            echo "No selection, exiting"
        ;;
esac

mv *.bak /tmp/baks/

