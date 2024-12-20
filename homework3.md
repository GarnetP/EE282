# This is where I will place my answers to homework 3

# Genome Summary Code (also in code/scripts/hw3_genome_summary.sh)
## Verify file integrity with a checksum 

```
cd ~/myrepos/ee282/data
wget http://ftp.flybase.net/releases/FB2022_05/dmel_r6.48/fasta/md5sum.txt
md5sum -c --ignore-missing md5sum.txt
```
## Checksum output
OK

## Process the fasta file 

```
module load ucsc-tools/v429
faSize -tab dmel-all-chromosome-r6.48.fasta.gz | grep -e "baseCount" -e "nBaseCount" -e "seqCount"
```

# Genome Summary Results 

## Total number of nucleotides
143726002
## Total number of Ns
1152978
## Total number of sequences
1870

# Annotation Summary Code (also in code/scripts/hw3_annotation_summary.sh)
## Verify file integrity

```
cd ~/myrepos/ee282/data/
wget http://ftp.flybase.net/releases/FB2022_05/dmel_r6.48/gtf/md5sum.txt -O md5sumanno.txt
md5sum -c --ignore-missing md5sumanno.txt
```
## Checksum output  
OK

## Total number of features of each type, sorted from most common to least common

```
bioawk -c gff '{print $3}' dmel-all-r6.48.gtf.gz /
| sort /
| uniq -c /
| sort -nr
```

## Total number of genes per chromosome arm

```
 bioawk -c gff '$3 == "gene" {print $1}' dmel-all-r6.48.gtf.gz /
| grep -e "X" -e "Y" -e "2L" -e "2R" -e "3L" -e "3R" -e "\<4\>"/
| sort /
| uniq -c /
| sort -rn
```

# Annotation Summary Results
 
## Total number of features of each type, sorted from most common to least common
 190050 exon  

 163242 CDS  

  46802 5UTR  

  33738 3UTR  

  30885 start_codon  

  30825 stop_codon  

  30799 mRNA  

  17896 gene  

   3053 ncRNA  

   485 miRNA  

   365 pseudogene  

   312 tRNA  

   300 snoRNA  

   262 pre_miRNA 

   115 rRNA  

   32 snRNA  

## Total number of genes per chromosome arm
   4227 3R  

   3653 2R  

   3515 2L  

   3489 3L  

   2708 X  

   114 4  

   113 Y
