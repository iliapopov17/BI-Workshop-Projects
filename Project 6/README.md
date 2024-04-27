# Transcriptomic Insights into _Saccharomyces cerevisiae_

This is a short version of the report. The full version is available here: [PDF](https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%206/BI_Project_6_Popov.pdf)

### Abstract
This study employs RNA sequencing to investigate the dynamic transcriptomic changes in _Saccharomyces cerevisiae_ during a 30-minute anaerobic fermentation. A total of 1905 genes, with 987 upregulated and 918 downregulated, were identified through rigorous analysis. Key findings include the upregulation of genes associated with glycerol biosynthesis and glucose transportation, vital for yeast survival and fermentation efficiency. Downregulated genes span diverse biological processes, suggesting a nuanced response to anaerobic conditions.

### Introduction
Saccharomyces cerevisiae, a pivotal model organism, undergoes significant transcriptional adaptations during fermentation. This study utilizes RNA sequencing to explore the intricate dynamics of gene expression during a critical 30-minute post-fermentation onset period. By focusing on this early timeframe, we aim to unravel key genes and biological processes modulated by _S. cerevisiae_, particularly those associated with glycerol biosynthesis, glucose transportation, and other pathways crucial for anaerobic survival and efficient fermentation.

### Materials and Methods
Yeast RNA was utilized to construct cDNA libraries for high-throughput sequencing from two experimental conditions. Quality assessment employed FastQC and MultiQC, with data obtained from the SRA FTP. HISAT2, featureCounts, and DESeq2 facilitated RNA-seq alignment, quantification, and differential expression analysis. Functional annotation utilized goSlimMapper, shinyGO, and KEGG enrichment for GO terms and pathways.

### Results
FastQC analysis confirmed high-quality sequencing data (average Phred-score ~35). HISAT2 alignment revealed a 94-96% alignment rate, and featureCounts analysis identified 74% of reads mapping to genomic features. Differential expression analysis identified 1905 significant genes, with 987 upregulated and 918 downregulated. Top upregulated genes were associated with glycerol biosynthesis and glucose transportation.

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%206/img/MultiQC.png" align='center', width="50%">
</div>

_Figure 1. The number of sequences counts for each read._


|Sample name|Total reads number|Reads aligned 1 time|Alignment rate|
|-----------|------------------|--------------------|--------------|
|SRR941816|9043877|7930593|94.25%|
|SRR941817|9929568|8645384|94.91%|
|SRR941818|1721675|1508002|96.22%|
|SRR941819|6172452|5368133|96.28%|

_Table 1. Summary of alignment results using the HISAT2 utility._


|Sample name|Total alignments|Assigned alignments|
|-----------|----------------|-------------------|
|SRR941816|9773838|7285693 (74.5%)|
|SRR941817|10832704|7986987 (73.7%)|
|SRR941818|1885543|1406729 (74.6%)|
|SRR941819|6800272|4994723 (73.4%)|

_Table 2. Summary of featureCount results._

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%206/img/Heatmap.png" align='center', width="50%">
</div>

_Figure 2. Heatmap for significantly differentially expressed genes before (SRR941816 & SRR941817) and after fermentation (SRR941818 & SRR941819). Gradient from violet to green in cells of heatmap stands for log2FoldChange value (from neg- ative to positive, respectively). Data were visualized using R DESeq2 package._

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%206/img/volcanoplot.png" align='center', width="50%">
</div>

_Figure 3. Volcanoplot. Top 5 upregulated and downregulated genes are marked._

|Gene ID|Log2FoldChange|padj|Product|
|-------|--------------|----|-------|
|Upregulated genes|
|YER062C|7.899115|1.327198e-79|DL-glycerol-3-phosphate phos- phatase involved in glycerol biosynthesis|
|YDR536W|7.873318|4.343371e-78|Glycerol proton symporter of the plasma membrane|
|YHR094C|7.880683|3.396192e-71|Low-affinity glucose transporter of the major facilitator superfamily|
|YNL065W|7.784312|2.181703e-59|Plasma membrane transporter of the major facilitator superfamily|
|YNL112W|7.093562|1.272895e-49|ATP-dependent RNA helicase of the DEAD-box protein family|
|Downregulated genes|
|YLR327C|-5.026001|3.894650e-35|Protein of unknown function that associates with ribosomes; protein abundance increases in response to DNA replication stress|
|YKR097W|-4.708442|5.900998e-31|Phosphoenolpyruvate carboxykinase|
|YMR081C|-4.794479|3.852522e-27|Serine-rich, hydrophilic protein; overexpression sup- presses growth defects of _hap2_, _hap3_, and _hap4_ mutants; expression is under glucose control|
|YDR342C|-4.507653|2.983276e-26|High-affinity glucose trans- porter; member of the major fa- cilitator superfamily|
|YCR021C|-4.451892|1.118774e-24|Negative regulator of the H(+)-ATPase _Pma1p_; stress-responsive protein|


_Table 3. Top Five Upregulated and Downregulated Genes at 30 Minutes of Fermentation._

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%206/img/up_reg_genes.png" align='center', width="50%">
</div>

_Figure 4. KEGG enrichment analysis (a) and GO network of biological processes (b) for upregulated genes. Visualization were performed on websource shinyGO v0.80_

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%206/img/ribosome_biogenesis.png" align='center', width="50%">
</div>

_Figure 5. KEGG pathway for ribosome biogenesis in eucary- otes with presentation of upregulated genes in green blocks. Visualization was performed on websource shinyGO v0.80_

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%206/img/down_reg_genes.png" align='center', width="50%">
</div>

_Figure 6. KEGG enrichment analysis (a) and GO network of bi- ological processes (b) for downregulated genes. Visualization was performed on websource shinyGO v0.80_

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%206/img/TCA_cycle_and_pyruvate_metabolism.png" align='center', width="50%">
</div>

_Figure 7. KEGG pathway for citracte cycle and pyruvate metabolism with presentation of downregulated genes in red blocks. Visualization was performed on websource shinyGO v0.80_

### Discussion
This study highlights the dynamic nature of _S. cerevisiae_ transcriptome during fermentation, showcasing genes crucial for anaerobic adaptation. Upregulated genes, such as YER062C (HOR2) and YDR536W (STL1), emphasize glycerol biosynthesis and glucose transport. Downregulated genes, including YLR327C and YKR097W (PCK1), suggest shifts in protein synthesis and metabolic strategy. The findings enhance our understanding of yeast biology, offering insights for industrial fermentation optimization.

### Data Availability

In this repository you can find:

- `BI_Project_6_Popov.pdf`  - report on the project in thesis format
- `Lab journal.ipynb` - laboratory journal with commands to reproduce pipeline
- `Lab journal.html` - laboratory journal in html format to read it in more convenient way
