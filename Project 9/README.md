# Unveiling Cellular Dynamics: Single-Cell Profiling of Human Bone Marrow 

This is a short version of the report. The full version is available here: [PDF](https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%209/BI_Project_9_Popov.pdf)

### Abstract
This study employs CITE-seq technology to explore the cellular landscape of human bone marrow, identifying distinct cell populations and their transcriptional profiles. Utilizing Scanpy for data analysis, the research delineates various immune cells, emphasizing the nuanced differences between monocytes and myeloid dendritic cells. The findings enhance our understanding of cellular differentiation and immune function within the bone marrow.

### Introduction
Human bone marrow serves as a primary hematopoietic site, containing a diverse array of cells crucial for immune responses. Advances in single-cell sequencing technologies like CITE-seq allow for detailed examination of these cells at a genomic level. This study aims to map the transcriptional profiles of bone marrow cells, focusing on the identification and functional analysis of immune cell subsets.

### Materials and Methods
A dataset of 33,454 human bone marrow cells was analyzed using the Scanpy toolkit. The workflow included quality control, normalization, and logarithmic transformation of data, followed by the identification of highly variable genes, principal component analysis, and clustering. Cells were annotated based on the expression of specific marker genes.

### Results
Quality control processes refined the dataset to 31,382 cells.

_Table 1. Results of CITE-seq dataset quality control._
|Cells before|Cells after|
|---|---|
|33,454|31,382|

Eight major cell groups were identified, including various T cells and dendritic cells. Key findings include:

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%209/imgs/tSNE.png" align='center', width="50%">
</div>

_Figure 1. T-distributed Stochastic Neighbor Embedding (t-SNE) Clustering of Annotated Cell Types._

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%209/imgs/marker_genes_dot_plot.png" align='center', width="50%">
</div>

_Figure 2. Dot Plot Visualization of Marker Gene Expression Across Cell Types._

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%209/imgs/marker_genes_violin_plot.png" align='center', width="50%">
</div>

_Figure 3. Violin Plot Distribution of Marker Gene Expression Across Cell Types._

- Distinct expression patterns of FCN1, VCAN, AIF1, SPI1, and CD68 helped differentiate monocytes from myeloid dendritic cells.
- CD4+ transitional memory T cells showed underexpression of genes, annotated with RORA and CCR7.

### Discussion
The study highlighted the complexity of cellular identities in the bone marrow, particularly between monocytes and myeloid dendritic cells. Despite their common origin, these cells exhibit divergent roles due to distinct transcriptional profiles. The results underscore the potential of single-cell technologies to unravel the intricate biology of bone marrow and its implications for understanding hematological diseases and developing therapeutic strategies.

### Data Availability

In this repository you can find:

- `BI_Project_8_Popov.pdf`  - report on the project in thesis format
- `Lab journal.ipynb` - laboratory journal with commands to reproduce pipeline
- Dataset for this work is available at my [Google Drive](https://drive.google.com/drive/folders/12BzKtr0yRJ-nNJiplJyBLH3Rh1ohfmKd?usp=sharing)
- I used the pipeline from the Scanpy tutorial
- I know about existence of the "Single-cell best practices book". The problem is that right now it is impossible to be used. It requires using both `Pyhon` and `R` at the same time. Yet the newest version of `rpy2` is broken. Version 3.5.1 is not compatible with `anndata2ri`. Closed loop. I wish to learn more from the "Single-cell best practices book" in a bright future.
