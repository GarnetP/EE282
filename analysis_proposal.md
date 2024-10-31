# Analysis Proposal for EE282 Final Project

Author: Garnet Phinney

  Drosophila affinis and Drosophila algonquin have a unique transposon landscape, with the population frequencies of TE families being higher than in Drosophila melanogaster (Hey 1989). Despite this interesting phenomena, a comparison of TE population frequency has not been done in these species of Drosophila using modern day genomics tools. My goal for the end of Winter Quarter is to create a site frequency spectrum for TE family presence across multiple Drosophila species. To do that, I will first need to annotate reference genomes and learn how to process Illumina data that our lab has generated. Therefore, for my project analyses, I propose annotating transposable elements in a Drosophila affinis reference genome, and processing and mapping Illumina reads to the reference genome to determine transposable element population frequency. 

   I will obtain a Drosophila affinis reference genome from our collaborator Dr. Robert Unckless and annotate this reference genome using the softwares EarlGrey (Baril 2024) and TEtrimmer (Qian 2024). To find the highest quality annotation protocol, I will test running EarlGrey alone compared to running a combination of EarlGrey, then TEtrimmer to aid in manually curating any missed or spurious TEs, and then running EarlGrey again. If the intermediate TEtrimmer step improves annotation quality compared to EarlGrey alone, I will use this intermediate step in future analyses. In either case, Earl Grey will produce summary figures that I can include in my final project, including a pie chart and a repeat landscape plot displaying TE family by portion of the genome.
When the reference genome is annotated, I can measure the relative TE population frequencies of Drosophila affinis individuals. Our lab has illumina sequencing data from 32 Drosophila affinis genomes, of which I will select five to work on in the scope of this project. The rest of the illumina genomes will be processed at a later date. To process our illumina reads and call TE presence absence variation I will follow the general methodology presented in Huang 2022. This will include trimming and quality control using Trim Galore, short read alignment using BWA, and calling for TE presence using Seqtk (Huang 2022).

  Once the transposons have been called I will be able to produce a transposon family frequency spectrum which will be expanded upon in later quarters. This figure will consist of a table with the rows headed with a given transposon family, and columns labeled with sample number. The table will show how many instances of a given transposon family are present or absent in each individual. This allows us to better understand if TE presence is consistent across individuals in the D. affinis species. I will also display the summary pie chart and repeat landscape plot that Earl Grey generates, to visually compare each individual’s relative TE family makeup. Based on previous research, we expect select TE families to have a consistently high abundance, compared to the alternative of a wide variety of TE families having low abundance (Hey 1989).

  In my initial project proposal, I proposed analyzing the reference genomes and individual Illumina data for both D. affinis and D. algonquin. In order to ensure achievability by the end of the quarter, I am now proposing annotating only the genome of D. affinis, and processing the Illumina data of only five individuals. This will allow me the time to successfully tackle more of the analysis steps of the project. I believe that these analyses will be feasible now that I have selected this subset of data. Even with a smaller subset of data, I will still be able to conduct most of the analysis steps necessary for my broader lab project. This will give me the confidence to continue my project after this class has concluded. The reference genome is the only part of the data we do not currently possess, and we expect to obtain it from our collaborator early next week. Additionally, the TE mapping and calling pipeline was developed by Harsh Shukla, so I will have access to help for running the scripts if there are any issues. 

  For this project, I aim to better understand the population frequency of transposon families in populations of Drosophila affinis. Understanding how to run the bioinformatics tools necessary for analysis and generate figures from their results is an important step in my graduate education. I believe that this analysis is achievable because I have selected a reasonable subset of data, and have labmates who are familiar with using these bioinformatics tools. This project will further my research goal of understanding the differences in TE population frequency across multiple Drosophila genomes. Understanding these variable TE population frequencies will provide broader insight into the evolution of transposable elements across species.
  














References
    
Baril T, Galbraith J, Hayward A,  2024. Earl Grey: A Fully Automated User-Friendly 
  Transposable Element Annotation and Analysis Pipeline, Mol Biol Evol, 4(4). DOI: https://doi.org/10.1093/molbev/msae068.
  
Hey J. 1989. The transposable portion of the genome of Drosophila algonquin is very 
  different from that in D. melanogaster. Mol Biol Evol. 6(1): 66-79. DOI: 10.1093/oxfordjournals.molbev.a040530. PMID: 2537921.
  
Huang Y, Shukla H, Yuh Chwen G, 2022. Species-specific chromatin landscape determines how 
  transposable elements shape genome evolution. eLife, 11. DOI: https://doi.org/10.7554/eLife.81567.
  
Qian J, Xue H, Ou S, Storer J, Fürtauer L, Wildermuth M, Kusch S, Panstruga R, 2024. 
  TEtrimmer: a novel tool to automate the manual curation of transposable elements. bioRxiv. DOI:         https://doi.org/10.1101/2024.06.27.600963.


