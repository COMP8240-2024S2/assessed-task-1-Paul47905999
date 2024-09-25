#!/bin/bash

# Update the path to Stanford NER directory
STANFORD_NER_PATH="/workspaces/assessed-task-1-Paul47905999/stanford-ner-2020-11-17"  # Replace with your correct path

# Define input and output files
WIKI_INPUT="wikipedia.txt"
FANWIKI_INPUT="fanwiki.txt"
WIKI_OUTPUT="wikipedia.txt"
FANWIKI_OUTPUT="fanwiki.txt"

# Run Stanford NER on wikipedia.txt
echo "Running Stanford NER on $WIKI_INPUT..."
$STANFORD_NER_PATH/ner.sh $WIKI_INPUT > $WIKI_OUTPUT
echo "Output written to $WIKI_OUTPUT."

# Run Stanford NER on fanwiki.txt
echo "Running Stanford NER on $FANWIKI_INPUT..."
$STANFORD_NER_PATH/ner.sh $FANWIKI_INPUT > $FANWIKI_OUTPUT
echo "Output written to $FANWIKI_OUTPUT."
