#!/bin/bash
NAME="philip"
LEN_NAME=${#NAME}
echo "LEN_NAME is $LEN_NAME"

# check for previous last file get max num
# proof by contradiction
LAST_NAME=$(ls | grep -E "^${NAME}[0-9]+$" | sort | tail -1 )
echo LAST_NAME is $LAST_NAME

len_last_name=${#LAST_NAME}

max=${LAST_NAME:$LEN_NAME}

if [[ ${#max} -lt 1 ]]; then
    max=0
fi

echo "max is $max"

# create 25 new files  
start=$(( max + 1 ))
stop=$(( start + 25 ))

for i in $(seq $start $stop); do
    #echo ${NAME}$i
    touch ${NAME}$i
done