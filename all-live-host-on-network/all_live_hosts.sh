#!/bin/bash

#################################################################################################
#	2017-10 : V1
#	fping -A -d -a -q -g -a -i 1 -r 0 $1
#	fping -A -d -a -q -g -a -i 1 -r 0 192.168.1.0/24
#	echo "Usage : ./all_live_host.sh 192.168.10/24 or bash all_live_host.sh 192.168.1.0/24"
#	This is a simple script to find all live hosts in a networks easily.
#
#################################################################################################

if [ "$1" == "-h" ]; then
	echo "Usage : ./all_live_host.sh 192.168.10/24 or bash all_live_host.sh 192.168.1.0/24"
	exit 0
  elif [ "$1" == "" ]; then
	echo "Give an option, or -h for usage"
	exit 0
  else
	fping -A -d -a -q -g -a -i 1 -r 0 $1
	exit 0
fi
