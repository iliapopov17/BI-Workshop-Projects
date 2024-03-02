# Transcriptomic Insights into _Saccharomyces cerevisiae_

### Abstract
This study employs RNA sequencing to investigate the dynamic transcriptomic changes in Saccharomyces cerevisiae during a 30-minute anaerobic fermentation. A total of 1905 genes, with 987 upregulated and 918 downregulated, were identified through rigorous analysis. Key findings include the upregulation of genes associated with glycerol biosynthesis and glucose transportation, vital for yeast survival and fermentation efficiency. Downregulated genes span diverse biological processes, suggesting a nuanced response to anaerobic conditions.

### Introduction
Saccharomyces cerevisiae, a pivotal model organism, undergoes significant transcriptional adaptations during fermentation. This study utilizes RNA sequencing to explore the intricate dynamics of gene expression during a critical 30-minute post-fermentation onset period. By focusing on this early timeframe, we aim to unravel key genes and biological processes modulated by S. cerevisiae, particularly those associated with glycerol biosynthesis, glucose transportation, and other pathways crucial for anaerobic survival and efficient fermentation.

### Materials and Methods
Yeast RNA was utilized to construct cDNA libraries for high-throughput sequencing from two experimental conditions. Quality assessment employed FastQC and MultiQC, with data obtained from the SRA FTP. HISAT2, featureCounts, and DESeq2 facilitated RNA-seq alignment, quantification, and differential expression analysis. Functional annotation utilized goSlimMapper, shinyGO, and KEGG enrichment for GO terms and pathways.

### Results
FastQC analysis confirmed high-quality sequencing data (average Phred-score ~35). HISAT2 alignment revealed a 94-96% alignment rate, and featureCounts analysis identified 74% of reads mapping to genomic features. Differential expression analysis identified 1905 significant genes, with 987 upregulated and 918 downregulated. Top upregulated genes were associated with glycerol biosynthesis and glucose transportation.

### Discussion
This study highlights the dynamic nature of _S. cerevisiae_ transcriptome during fermentation, showcasing genes crucial for anaerobic adaptation. Upregulated genes, such as YER062C (HOR2) and YDR536W (STL1), emphasize glycerol biosynthesis and glucose transport. Downregulated genes, including YLR327C and YKR097W (PCK1), suggest shifts in protein synthesis and metabolic strategy. The findings enhance our understanding of yeast biology, offering insights for industrial fermentation optimization.

### Data Availability

In this repository you can find:

- `BI_Project_6_Popov.pdf`  - report on the project in thesis format
- `Lab journal.ipynb` - laboratory journal with commands to reproduce pipeline
- `Lab journal.html` - laboratory journal in html format to read it in more convenient way
