#!/bin/bash

extract_ners() {
  INPUT_FILE=$1
  OUTPUT_FILE=$2

  # Extract lines containing named entities and save to the output file
  grep -oP '\b[A-Z][a-z]+(?: [A-Z][a-z]+)*\b' $INPUT_FILE > $OUTPUT_FILE

  echo "NERs extracted to $OUTPUT_FILE"
}

# Input and output files
WIKI_INPUT="wikipedia.txt"
FANWIKI_INPUT="fanwiki.txt"
WIKI_OUTPUT="ner-list-wikipedia.txt"
FANWIKI_OUTPUT="ner-list-fanwiki.txt"

# Extract NERs from both files
echo "Extracting NERs from $WIKI_INPUT..."
extract_ners $WIKI_INPUT $WIKI_OUTPUT

echo "Extracting NERs from $FANWIKI_INPUT..."
extract_ners $FANWIKI_INPUT $FANWIKI_OUTPUT
