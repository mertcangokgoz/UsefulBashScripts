#!/usr/bin/env bash
#### Script finds UP hosts and its HOSTNAME
#### Usage:
#### sh nmap_find_hostname.sh IP/MASK
#### eg.: sh nmap_find_hostname.sh 192.168.0.0/16

nmap -sn $1 -oG - | awk '$4=="Status:" && $5=="Up" {print $2, $3}'
