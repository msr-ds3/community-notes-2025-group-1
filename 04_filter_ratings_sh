#!/bin/bash

# Combine all filtered data into one file: ratings_jan23_to_july31.tsv
rm -f ratings_jan23_to_july31.tsv

for i in $(seq -w 0 19); do
  unzip -p ratings-000${i}.zip | \
    awk -F '\t' -v start=$(date -d "2021-01-23 00:00:00" +%s)000 \
                 -v end=$(date -d "2021-07-31 23:59:59" +%s)000 \
                 -v file="$i" '
    FNR==1 {
      if (NR==1) print;  # Only print header once
      next;
    }
    $3 >= start && $3 <= end { print }
    ' >> ratings_jan23_to_july31.tsv
done
