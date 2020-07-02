#!/bin/bash

printf	"\n \n -------------------------------------------------------------------------------------------------\n \n"
ssh  -o ConnectTimeout=2   root@10.10._.150 'hostname && uptime && dnf install python3* -y'
printf	"\n \n -------------------------------------------------------------------------------------------------\n \n"
#ssh  -o ConnectTimeout=2   root@10.10._.155 'hostname && uptime && dnf install python3* -y'
#ssh  -o ConnectTimeout=2   root@10.10._.156 'hostname && uptime && dnf install python3* -y'
ssh  -o ConnectTimeout=2   root@10.10._.161 'hostname && uptime && dnf install python3* -y'
#ssh  -o ConnectTimeout=2   root@10.10._.162 'hostname && uptime && dnf install python3* -y'
#ssh  -o ConnectTimeout=2   root@10.10._.163 'hostname && uptime && dnf install python3* -y'
#ssh  -o ConnectTimeout=2   root@10.10._.164 'hostname && uptime && dnf install python3* -y'
#ssh  -o ConnectTimeout=2   root@10.10._.165 'hostname && uptime && dnf install python3* -y'
