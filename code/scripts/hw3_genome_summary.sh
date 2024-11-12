# Script for genome summary

# Calculate these summaries for the genome 
'''
cd ~/myrepos/ee282/data/
shasum dmel-all-chromosome-r6.48.fasta.gz
'''
# Process the fasta file 
'''
module load ucsc-tools/v429
faSize -tab dmel-all-chromosome-r6.48.fasta.gz 
'''
