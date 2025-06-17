#!/bin/bash
# use curl or wget to download the version 2 1gram file with all terms starting with "1", googlebooks-eng-all-1gram-20120701-1.gz

#curl -O https://storage.googleapis.com/books/ngrams/books/googlebooks-eng-all-1gram-20120701-1.gz
curl -o birdwatch-public-data/2025/06/16/notes/notes-00000.gz https://ton.twimg.com/birdwatch-public-data/2025/06/16/notes/notes-00000.zip

# update the timestamp on the resulting file using touch  
# do not remove, this will keep make happy and avoid re-downloading of the data once you have it
touch birdwatch-public-data/2025/06/16/notes/notes-00000.gz
