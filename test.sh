#!/bin/bash

current_time=$(date "+%Y.%m.%d-%H.%M.%S")

declare -a myarray
let i=0
while IFS=$'\n' read -r line_data; do
    
    myarray[i]="${array_element}" # Populate array.
    ((++i))
done <  lines.txt
printf "%s\n" "${myarray[@]}+$current_time" > test.log

git add.
git commit-m "updates"
git push -u origin master 


