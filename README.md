# NER Evaluation Lab

## Overview
This project involves evaluating the performance of the Stanford Named Entity Recognition (NER) system on two text sources: Wikipedia and Fanwiki. The goal is to extract named entities from the texts, evaluate the system's accuracy, and fix common issues like incorrect tagging of punctuation.

## Files Included
- `stanford-wikipedia.txt`: Raw NER output for Wikipedia text.
- `stanford-fanwiki.txt`: Raw NER output for Fanwiki text.
- `wikipedia-gold.txt`: Gold standard annotated version for Wikipedia text.
- `fanwiki-gold.txt`: Gold standard annotated version for Fanwiki text.
- `eval.sh`: Script used for evaluation of NER performance.
- `fix-ner.sh`: Script to correct punctuation tagging in NER output.
- `fixed-wikipedia.txt`: NER output after fixing punctuation tagging for Wikipedia.
- `fixed-fanwiki.txt`: NER output after fixing punctuation tagging for Fanwiki.
  
## NER Process
1. **Running the NER System**: The Stanford NER system was applied to both text files using the provided scripts (`stanford-ner.sh`).
2. **Creating Gold Standard Files**: Gold standard files (`wikipedia-gold.txt` and `fanwiki-gold.txt`) were created by running the NER on the texts, making corrections, and formatting them according to Stanford's guidelines.
3. **Evaluating Performance**: The evaluation script (`eval.sh`) was used to compare the NER output against the gold standard files. 

## Evaluation Results
| Entity Type  | Precision | Recall | F1 Score | True Positives | False Positives | False Negatives |
|--------------|-----------|--------|----------|----------------|------------------|------------------|
| LOCATION     | 1.0000    | 1.0000 | 1.0000   | 1              | 0                | 0                |
| ORGANIZATION | 1.0000    | 0.5000 | 0.6667   | 1              | 0                | 1                |
| PERSON       | 0.2500    | 0.2000 | 0.2222   | 1              | 3                | 4                |
| **Totals**   | 0.5000    | 0.3750 | 0.4286   | 3              | 3                | 5                |

## Fixing NERs
### Purpose of Fix
Punctuation was being incorrectly tagged as named entities. To address this, the `fix-ner.sh` script was implemented to replace punctuation tags with the "O" (Outside) tag.

### Results After Fix
- **Before Fix**:
    - F1 Score: 0.4286
    - Precision: 0.5000
    - Recall: 0.3750

- **After Fix**: 
    - (Insert results from evaluation after running `eval.sh` on `fixed-wikipedia.txt` and `fixed-fanwiki.txt`)

### Conclusion
The process demonstrated that fixing punctuation tagging can improve NER performance metrics. The implementation of `fix-ner.sh` resulted in (summarize the improvements or observations). This highlights the importance of preprocessing and cleaning NER outputs to achieve better accuracy.

## Additional Notes
- Ensure that the Stanford NER package is correctly installed and configured in your environment.
- The evaluation metrics can guide future improvements in NER applications.
