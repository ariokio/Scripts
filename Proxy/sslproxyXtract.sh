#!/bin/bash

# keep it clean
if [ -f sslProxyListIP && -f sslproxy && -f sslproxy.md ] 
then
	rm sslProxyListIP sslproxy*
fi

curl https://www.sslproxies.org/ -o sslproxy
echo "5 sec"
sleep 3

html2markdown sslproxy >> sslproxy.md
echo "take 5 sec"
sleep 2

cat sslproxy.md | grep "minutes ago"| awk -F'|' '{print "IP : "$1,"- PORT :"$2,"Country : "$4,"Time :"$8}'| sort -u  >> sslProxyListIP
echo "1 sec"
sleep 1

cat sslProxyListIP

exit 0
