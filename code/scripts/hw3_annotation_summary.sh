# Script for annotation summary
# Verify file integrity
cd ~/myrepos/ee282/data/
shasum dmel-all-r6.48.gtf.gz
# Total number of features of each type, sorted from most common to least common
bioawk -c gff '{print $3}' dmel-all-r6.48.gtf.gz /
| sort /
| uniq -c /
| sort -nr
# Total number of genes per chromosome arm (X,Y, 2L, 2R, 3L, 3R, 4)
 bioawk -c gff '$3 == "gene" {print $1}' dmel-all-r6.48.gtf.gz /
| grep -e "X" -e "Y" -e "2L" -e "2R" -e "3L" -e "3R" -e "\<4\>"/
| sort /
| uniq -c /
| sort -rn
