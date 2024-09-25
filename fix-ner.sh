#!/bin/bash

# Define input and output files for Wikipedia and Fanwiki
input_wikipedia="stanford-wikipedia.txt"
output_wikipedia="fixed-wikipedia.txt"
input_fanwiki="stanford-fanwiki.txt"
output_fanwiki="fixed-fanwiki.txt"

# Function to fix punctuation tags
fix_tags() {
    input_file=$1
    output_file=$2
    # Process the input file
    awk '{
        # If the line ends with punctuation, change the tag to O
        if ($1 ~ /^[[:punct:]]+$/) {
            print $1, "O" # Print word with tag O
        } else {
            print $0 # Print line as is
        }
    }' "$input_file" > "$output_file"
}

# Fix tags for both files
fix_tags "$input_wikipedia" "$output_wikipedia"
fix_tags "$input_fanwiki" "$output_fanwiki"

echo "Punctuation tags have been fixed. Check $output_wikipedia and $output_fanwiki."
