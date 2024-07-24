#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <start_index> <end_index>"
    exit 1
fi

start=$1
end=$2
file="inputFile"

> $file
for i in $(seq $start $end); do
    echo "$i, $RANDOM" >> $file
done
