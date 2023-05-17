#!/bin/bash

URL="https://www.amfiindia.com/spages/NAVAll.txt"
OUTPUT_FILE="output.csv"
curl -s -o temp.txt "$URL"

awk -F';' '{print $4 "," $5}' temp.txt > "$OUTPUT_FILE"

rm temp.txt

echo "Extraction completed. CSV file saved as $OUTPUT_FILE."
