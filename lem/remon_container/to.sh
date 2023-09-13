#!/bin/bash

files=$(ls /mnt/logs/)

# Step 2: Find the file with the largest number
largest_number=0
for file in $files; do
    number=$(basename "$file" | tr -cd '0-9')
    echo "$number"
     if [ "$number" -eq "$number" ] 2>/dev/null; then
        if [ "$number" -gt "$largest_number" ]; then
            largest_number="$number"
        fi
    fi
done
    
   

# Step 3: Increment the largest number
new_number=$((largest_number + 1))

# Step 4: Create the new log file name
log="log_$new_number"

echo "$log"
