#!/bin/bash

# Paths
STANFORD_NER_PATH="/workspaces/assessed-task-1-Paul47905999/stanford-ner-2020-11-17"
CLASSIFIER_PATH="$STANFORD_NER_PATH/classifiers/english.all.3class.distsim.crf.ser.gz"

# Evaluate Wikipedia
java -cp "$STANFORD_NER_PATH/*" edu.stanford.nlp.ie.NERClassifierCombiner \
  -loadClassifier "$CLASSIFIER_PATH" \
  -testFile stanford-wikipedia.txt \
  -goldFile wikipedia-gold.txt > wikipedia-eval.txt

# Evaluate Fandom Wiki
java -cp "$STANFORD_NER_PATH/*" edu.stanford.nlp.ie.NERClassifierCombiner \
  -loadClassifier "$CLASSIFIER_PATH" \
  -testFile stanford-fanwiki.txt \
  -goldFile fanwiki-gold.txt > fanwiki-eval.txt
