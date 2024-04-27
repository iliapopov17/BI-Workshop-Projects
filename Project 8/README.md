# T-cell receptor diversification and specialisation: analysis of β-cell repertoire and phenotypic characterisation in response to cytomegalovirus

This is a short version of the report. The full version is available here: [PDF](https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%208/BI_Project_8_Popov.pdf)

### Abstract
This study investigates the diversity and specialization of T-cell receptor (TCR) β-chain repertoires in response to cytomegalovirus (CMV), utilizing 16 samples from two donors, one CMV+. Through 5’-RACE sequencing and phenotypic analysis, we identified distinct T-cell populations and phenotypes, revealing specialized antigen responses and potential CMV recognition in CMV- donors.

### Introduction
The adaptive immune system’s specificity is largely attributed to the variability of TCRs. This study aims to elucidate the diversity within TCR β-chain repertoires and its implications for CMV-specific immune responses.

### Materials and Methods
We analyzed TCR β-chain repertoires from two donors using 5’-RACE sequencing. Samples were classified by CD4+ or CD8+ subsets and naive or memory phenotypes. Correlation heatmaps and HLA allele histograms were employed for phenotypic characterization and CMV status determination.

### Results
Differences in CDR3 utilization profiles suggested distinct T-cell subclasses. High correlation pairs indicated specialized antigen responses, while others showed lower correlation, hinting at a broader antigen recognition range. Clustering analysis suggested single-donor origins for sample groups, and CMV-specific sequences were identified in both CMV+ and CMV- donors.

|Sample|Donor|Subset|Phenotype|CMV|
|------|-----|------|---------|---|
|s3    |D1   |CD8   |memory   |+  |
|s7    |D1   |CD8   |memory   |+  |
|s4    |D2   |CD8   |memory   |-  |
|s6    |D2   |CD8   |memory   |-  |
|s9    |D1   |CD8   |naive    |+  |
|s14   |D1   |CD8   |naive    |+  |
|s11   |D2   |CD8   |naive    |-  |
|s12   |D2   |CD8   |naive    |-  |
|s8    |D1*  |CD4   |memory   |+  |
|s10   |D1*  |CD4   |memory   |+  |
|s1    |D2*  |CD4   |memory   |-  |
|s5    |D2*  |CD4   |memory   |-  |
|s15   |D1*  |CD4   |naive    |+  |
|s16   |D1*  |CD4   |naive    |+  |
|s2    |D2*  |CD4   |naive    |-  |
|s13   |D2*  |CD4   |naive    |-  |

_Table 1. Metadata Summary for TCR β-Chain Repertoire Samples. Asterisks indicate potential donor mismatches for  CD4 samples, necessitating a swap of CMV statuses due to  the inability to conclusively match CD4 and CD8 cells from  the same donor._

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%208/imgs/CDR3.png" align='center', width="50%">
</div>

_Figure 1. Heat map of CDR3 utilisation._

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%208/imgs/correlation.png" align='center', width="50%">
</div>

_Figure 2.  Correlation patterns between samples._

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%208/imgs/antigenic.png" align='center', width="50%">
</div>

_Figure 3. Antigenic profile histogram._

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%208/imgs/HLA.png" align='center', width="50%">
</div>

_Figure 4. HLA allele profile histogram._

### Discussion
The study’s findings highlight the intricate specialization within TCR repertoires and underscore the potential for cross-reactivity in CMV-negative individuals. The observed diversity has significant implications for understanding immune responses and developing targeted therapies.

### Data Availability

In this repository you can find:

- `BI_Project_8_Popov.pdf`  - report on the project in thesis format
- [`Lab journal`](https://github.com/antigenomics/repseq-annotation-tutorial) - instead of writing my own laboratory journal I've used this tutorial
