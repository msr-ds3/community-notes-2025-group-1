
#!/bin/bash

# use curl or wget to download the community notes, 

ZIP_URL="https://ton.twimg.com/birdwatch-public-data/2025/06/16/notes/notes-00000.zip"
ZIP_FILE="notes-00000.gz"

# Download the file
curl -o "$ZIP_FILE" "$ZIP_URL"

# Update timestamp so Make or other systems don't re-download
touch "$ZIP_FILE"