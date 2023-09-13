#!/bin/bash

line=$(head -n 1 ./addrs.txt)

# Now you can use the variable $line in your script
echo "The copied line is: $line"

search_string="PEER:"
replacement_string="PEER: $line"
input_file="car.config"

echo "Before sed:"
cat "$input_file"

# Use sed to replace the line containing the old text
sed -i "/$search_string/c\\$replacement_string" "$input_file"

echo "After sed:"
cat "$input_file"
