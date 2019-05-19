count=0 
while read line; do 
    sudo ufw deny from $line to any 
    printf '%d %s\n' "$count" "${line*//}"
    (( count++ )); 
    done < test*.txt