#!/bin/bash

# Filter the Birdwatch notes data for 
zcat birdwatch.gz | awk -F '\t' -v start=$(date -d "2021-01-23 00:00:00" +%s)000 -v end=$(date -d "2021-07-31 23:59:59" +%s)000 'NR==1 || ($3 >= start && $3 <= end)' > notes_jan23_to_july31.tsv

# (for counting the number of lines in the filtered data)
# notes_jan23_to_july31.tsv | wc -l 
