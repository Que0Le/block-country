count=0 while read line; do sudo ufw deny from $line to any; done < firehol_level1*.netset
while read line; do sudo ufw deny from $line to any printf '%d %s\n' "$count" "${line*//}"
   (( count++ )); done < firehol_level1*.netset
while read line; do sudo ufw deny from $line to any; done < firehol_level1*.netset