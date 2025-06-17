#!/bin/bash

# Download the latest Birdwatch notes data for June 16, 2025
curl -o birdwatch.gz https://ton.twimg.com/birdwatch-public-data/2025/06/16/notes/notes-00000.zip

# update the timestamp on the resulting file using touch  
# do not remove, this will keep make happy and avoid re-downloading of the data once you have it
touch birdwatch.gz
