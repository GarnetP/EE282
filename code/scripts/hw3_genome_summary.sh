# Script for genome summary

# Verify file integrity 
cd ~/myrepos/ee282/data/
md5sum dmel-all-chromosome-r6.48.fasta.gz > dmel-all-chromosome-r6.48.fasta.gz.$
md5sum -c dmel-all-chromosome-r6.48.fasta.gz.md5
md5sum dmel-all-chromosome-r6.48.fasta.gz


# Process the fasta file 
module load ucsc-tools/v429
faSize -tab dmel-all-chromosome-r6.48.fasta.gz | grep -e "baseCount" -e "nBaseCount" -e "seqCount"
