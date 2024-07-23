#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start_index> <end_index>"
    exit 1
fi

start_index=$1
end_index=$2

if ! [[ "$start_index" =~ ^[0-9]+$ ]]; then
    echo "Error: Start index must be a non-negative integer."
    exit 1
fi

if ! [[ "$end_index" =~ ^[0-9]+$ ]]; then
    echo "Error: End index must be a non-negative integer."
    exit 1
fi

if [ "$start_index" -ge "$end_index" ]; then
    echo "Error: Start index must be less than end index."
    exit 1
fi

output_file="inputdata"
rm -f "$output_file" 

echo "Generating $output_file with entries from $start_index to $end_index"

for (( i=start_index; i<=end_index; i++ ))
do
    random_number=$(( RANDOM % 1000 )) 
    echo "$i, $random_number" >> "$output_file"
done

echo "File generation complete."
