#!/bin/bash
# https://scottlinux.com/2013/08/30/block-geo-region-list-of-ips-with-ufw-in-linux/
#while read line; do sudo ufw delete deny from $line to any; done < test*.txt
#while read line; do sudo ufw delete deny from $line to any; done < brazil*.txt
#while read line; do sudo ufw delete deny from $line to any; done < china*.txt
#while read line; do sudo ufw delete deny from $line to any; done < india*.txt
#while read line; do sudo ufw delete deny from $line to any; done < indo*.txt
#while read line; do sudo ufw delete deny from $line to any; done < phil*.txt
#while read line; do sudo ufw delete deny from $line to any; done < russian*.txt
while read line; do sudo ufw delete deny from $line to any; done < turkey*.txt


#Script to process ip ranges to ban using IPSet and IPTables
# https://www.ip2location.com/free/visitor-blocker
# https://www.itworld.com/article/2833357/how-to-block-traffic-from-other-countries-in-linux.html
#ipset create countryblock hash:net
#while read line; do ipset add countryblock $line; done < china.txt
#iptables -I INPUT -m set --match-set countryblock src -j DROP
