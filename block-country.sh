#!/bin/bash
#Script to process ip ranges to ban using IPSet and IPTables
# https://www.ip2location.com/free/visitor-blocker
ipset create countryblock hash:net
while read line; do ipset add countryblock $line; done < china.txt
iptables -I INPUT -m set --match-set countryblock src -j DROP