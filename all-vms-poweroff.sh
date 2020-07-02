#!/bin/bash

ssh  -o ConnectTimeout=2   root@10.10._.150 'hostname && uptime && poweroff'
ssh  -o ConnectTimeout=2   root@10.10._.155 'hostname && uptime && poweroff'
#ssh  -o ConnectTimeout=2   root@10.10._.156 'hostname && uptime && poweroff'
ssh  -o ConnectTimeout=2   root@10.10._.161 'hostname && uptime && poweroff'
ssh  -o ConnectTimeout=2   root@10.10._.162 'hostname && uptime && poweroff'
ssh  -o ConnectTimeout=2   root@10.10._.163 'hostname && uptime && poweroff'
ssh  -o ConnectTimeout=2   root@10.10._.164 'hostname && uptime && poweroff'
ssh  -o ConnectTimeout=2   root@10.10._.165 'hostname && uptime && poweroff'
