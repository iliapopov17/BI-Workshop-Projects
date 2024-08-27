# Ancient Oral Chronicles: Unveiling Microbial Secrets Through Dental Calculus

## Abstract
Metagenomic analysis of diverse microbial communities provides a powerful lens through which we can explore ecosystem dynamics and human health [^1]. Leveraging next-generation sequencing (NGS) techniques, this study delves into the microbial archives preserved within dental calculus samples extracted from human remains dating back over a millennium [^2]. The metagenome of the discovered and analyzed bacterial community reveals a wealth of information – ranging from insights into historical diseases and dietary patterns to the evolutionary trajectories of typical oral bacteria.

By scrutinizing 16S rRNA genes and employing shotgun sequencing, the meticulous dissection of the taxonomy composition of ancient dental calculus unveils remarkable findings. Specifically, two out of the four individuals examined likely suffered from severe forms of periodontal disease. These revelations not only illuminate the past but also underscore the enduring relevance of microbial studies in shaping our understanding of human health.

## Introduction
The study of ancient human oral microbiomes provides a fascinating glimpse into the microbial communities that coexisted with our ancestors [^3]. By analyzing dental calculus samples from individuals dating back over a millennium, we can unravel the mysteries of historical health, dietary habits, and ecological interactions [^2], [^4]. In this research, we delve into the metagenomes of ancient dental calculus, aiming to understand the composition, evolution, and functional properties of these microbial communities.
Dental calculus, or mineralized dental plaque, serves as a unique reservoir of ancient biomolecules. It perfectly preserves microbial and host DNA, proteins, and metabolites, making it an invaluable source for studying the oral microbiome of the past. Through the analysis of dental calculus, we gain insights into the microbial ecosystems that shaped human health and disease over time [^5], [^6].
Among the microbial players in ancient dental calculus, the «red complex» stands out. This group of bacteria is consistently associated with severe forms of periodontal disease. Notably, the red complex includes three key species:
-	_Porphyromonas gingivalis_: known for its virulence factors, P. gingivalis plays a central role in periodontitis progression.
-	_Tannerella forsythia_: contributes to tissue destruction and inflammation in periodontal disease.
-	_Treponema denticola_: associated with subgingival plaque and periodontitis pathogenesis.<br>

Understanding the prevalence and impact of the red complex in ancient oral microbiomes informs our knowledge of historical health challenges [^7], [^8].
Shotgun sequencing analysis reveals regions of zero coverage in the modern T. forsythia 92A2 strain. These regions likely represent genetic material acquired during evolution which highlights the dynamic nature of the oral microbiome over millennia.
Root samples were also explored, which exhibit different bacterial phyla proportions and compositions compared to calculus samples. These variations reflect ecological niches and host interactions, providing insights into ancient oral ecosystems.
Studying ancient oral microbiomes not only enriches our understanding of the past but also has implications for contemporary health. By bridging history and modern science, we gain valuable insights into the human condition.

## Materials and Methods
### 16S rRNA Gene Sequencing
DNA samples were sequenced, yielding single-ended reads of the V5 region of the 16S ribosomal RNA using a Roche GS Junior instrument (454). The original research data are publicly available in the NCBI Sequence Read Archive (SRA) under accession number SRP029257 (BioProject PRJNA216965). `QIIME2` v2023.2.0 [^9], [^10] (“Quantitative Insights Into Microbial Ecology”), an open-source bioinformatics pipeline, was employed to analyze raw DNA sequencing data for microbiome characterization.
The `QIIME2` pipeline encompassed the following steps:
1.	Raw reads underwent quality control and trimming.
2.	Denoising and Dereplication processes were applied.
3.	Chimeric sequences were filtered out.
4.	`DADA2` v1.30.0 [^11], integrated within `QIIME2`, was utilized for ASV clustering.
5.	Trimming and filtering parameters were set as follows: `--p-trim-left 32` and `--p-trunc-len 150`, tailored to barcode and primer lengths and quality control distribution.
6.	The `QIIME2` Naive Bayes classifier, trained on 16S rRNA data using `SILVA` reference sequences and taxonomy files, was employed to analyze the taxonomic composition of the samples.
7.	Each step of the analysis was visualized using `QIIME2`.

### Shotgun Sequencing of Dental Calculus Microbiome
Shotgun sequencing was conducted on a DNA sample extracted from the dental calculus microbiome of individual G12 (skeleton dating from AD 950-1200) who suffered from periodontal disease. The resulting reads were assembled into contigs. To facilitate comparison, we obtained a precomputed assembly of the ancient Tannerella forsythia genome specific to the G12 individual.<br>

**Metagenome Assembly**:
-	The shotgun sequencing data from the G12 sample were assembled into contigs.
-	A precomputed assembly for the _Tannerella forsythia_ 92A2 genome specific to the G12 individual was obtained.<br>

**Alignment and Annotation**:
-	The G12 metagenome assembly was aligned to the _Tannerella forsythia_ 92A2 reference genome using `BWA-mem` v0.7.17 [^12].
-	`Samtools` v1.19.2 [^13] was used to compress, sort, and index the aligned reads against the reference genome.
-	Basic statistics of the resulting alignment were obtained using the `samtools` flagstat command.<br>

**Conversion and Annotation Visualization**:
-	The alignment results were converted to .bed format using `BEDtools` v2.31.1 [^14] (bedtools bamtobed).
-	Genome regions absent in the ancient strain were subtracted from the `GFF3` annotation using `bedtools` intersect (with the `-v` option).
-	The resulting annotation file was manually inspected using bash scripting.
-	Visualization of the annotated regions was performed using the `Integrative Genomics Viewer` (`IGV`) desktop application.

## Results
### Amplicon Sequencing
Initially, our sequencing results yielded approximately 5000 reads per analyzed sample, with a median read length of 179 nucleotides. However, upon quality assessment, we observed a decline in read quality scores starting at base 180. Considering the lengths of barcodes and primer sequences used during library preparation and the decrease in read quality, we performed trimming.

Using the `DADA2` v1.30.0 pipeline, chimeric sequences within the V5 16S regions were filtered out. These regions are particularly informative for profiling oral metagenomes, as they are consistently present across metadata samples. Remarkably, over 90% of reads in each sample successfully passed all filters and were confirmed as non-chimeric.

|Sample-id|Initial reads|Filtered reads|Passed filter, %|Denoised|Non-chimeric|Input non-chimeric, %|
|---------|-------------|--------------|----------------|--------|------------|---------------------|
|S10-V5-Q-B61-calc|5957|5695|95.60|5575|5559|93.32|
|S14-V5-P-B17-calc|4491|4282|95.35|4218|4218|93.92|
|S15-V5-R-B78-calc|4212|4037|95.85|3950|3911|92.85|
|S16S17-V5-K1-G12-root|5788|5599|96.73|5427|5361|92.62|
|S16S17-V5-K2-G12-root|5272|5066|96.09|4884|4862|92.22|
|S18S19-V5-L-B17-root|4955|4790|96.67|4680|4680|94.45|
|S20S21-V5-M-B61-root|5516|5396|97.82|5240|5182|93.94|
|S22S23-V5-N-B78-root|4695|4534|96.57|4382|4261|90.76|
|S8-V5-O-G12-calc|5362|5199|96.96|5108|5092|94.96|

_Table 1. Basic statistics of initial sequencing reads and their statistics after their trimming and filtering._

### Feature Distribution
Analysis resulted in the clustering of amplicon sequences into amplicon sequence variants (ASVs), which serve as a higher-resolution analogue of traditional operational taxonomic units (OTUs). Notably, we observed that only a few dominant features were consistently present in the majority of samples. This outcome aligns with our focus on conservative sequences.

### Microbiome Composition
Figure 1 illustrates the relative abundance of bacterial phyla in the calculus samples. Seven dominant phyla were identified: _Firmicutes_, _Proteobacteria_, _Bacteroidetes_, _Synergistetes_, _Actinobacteria_, _Fusobacteria_, and _Spirochaetes_. Interestingly, the root samples also contained bacteria from _Firmicutes_, _Proteobacteria_, _Bacteroidetes_, and _Actinobacteria_, albeit in different proportions and compositions.

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project_07/img/TaxComp.png" align='center', width="50%">
</div>

_Figure 1. Taxonomic composition of analyzed ancient samples._

These findings provide valuable insights into the diversity and taxonomic composition of ancient oral microbiomes, shedding light on the historical health and ecological context of the studied individuals.

### Shotgun Sequencing Insights
During shotgun sequencing, only 1.83% of the metagenomic contigs from dental calculus aligned to the _Tannerella forsythia_ 92A2 genome. Analysis of the alignment results revealed intriguing regions of zero coverage in the modern strain – likely acquired during evolution. Specifically, 194 coding sequences associated with these regions were identified.

Acquired Genes and Their Functions: These acquired genes fall into distinct functional groups, shedding light on the strain’s adaptation mechanisms:
1.	Restriction-Modification System: These genes are involved in defense against foreign DNA.
2.	Mobile Genetic Elements: Elements that facilitate horizontal gene transfer.
3.	DNA Repair and Post-Translational Modification: Crucial for maintaining genome stability.
4.	Antibiotic Biosynthesis and Drug Resistance: Reflecting the strain’s interactions with its environment.
5.	Metabolism: Genes related to nutrient utilization and energy production.

|Product|Protein_id|Protein_group|
|-------|----------|-------------|
|AIPR familyprotein|WP_014224073.1|restriction modification system|
|DDE-type integrase/transposase/recombinase|WP_014223573.1|mobile genetic element|
|IS1 family transposase|WP_099046116.1|mobile genetic element|
|IS110 family transposase|WP_014225157.1|mobile genetic element|
|IS1380 family transposase|WP_041590984.1|mobile genetic element|
|DNA mismatch endonuclease Vsr|WP_041590610.1|DNA repair|
|GNAT family N-acetyltransferase|WP_007366527.1|post-translational modification|
|SPASM domain-containing protein|WP_157755359.1|post-translational modification|
|radical SAM peptide maturase|WP_014224286.1|post-translational modification|
|class I lanthipeptide|WP_041590503.1|antibiotic biosynthesis|
|lanthionine synthetase C family protein antibiotic dehydratase family protein thiopeptide-type bacteriocin biosynthesis |protein ParA family protein|WP_014223583.1|antibiotic biosynthesis|
|conjugative transposon protein TraJ|WP_041590506.1|antibiotic biosynthesis|
|conjugative transposon protein TraM|WP_041590507.1|antibiotic biosynthesis|
|conjugative transposon protein TraN|WP_007366517.1|HGT of plasmids|
|tetracycline resistance ribosomal protection protein|WP_007366507.1|HGT of plasmids|
|RteC domain-containing protein|WP_007366504.1|HGT of plasmids|
|TetR/AcrR family transcriptional regulator|WP_007366503.1|HGT of plasmids|
|dihydrofolate reductase family protein|WP_007366526.1|antibiotic resistance|
|beta-ketoacyl-ACP synthase III|WP_007366522.1|antibiotic resistance|

_Table 2. Examples of several protein coding genes acquired by the Tannerella forsythia 92A2 strain._

## Discussion
Metagenomic analysis of dental calculus revealed a fascinating glimpse into the oral microbiome of individuals from the past millennium [^15], [^16]. By combining 16S rRNA gene sequencing and shotgun sequencing, we were able to characterize the overall bacterial composition and gain deeper insights into specific pathogens associated with periodontal disease [^17].

The 16S rRNA gene sequencing identified a diverse range of bacterial phyla within the dental calculus samples, including Firmicutes, Proteobacteria, Bacteroidetes, Synergistetes, Actinobacteria, Fusobacteria, and Spirochaetes. This finding aligns with previous studies on the oral microbiome, highlighting the presence of a complex and dynamic bacterial community within the human mouth.

Interestingly, our analysis identified two individuals with a high abundance of bacteria associated with the «red complex». This complex, consisting of _Tannerella forsythia_, Treponema denticola, and Porphyromonas gingivalis, is a well-established group of pathogens known to be a major contributor to severe forms of periodontal disease. The presence of the red complex in these ancient samples suggests that periodontal disease has been a prevalent health concern throughout human history [^18]. This aligns with recent paleomicrobiological studies that have identified evidence of the red complex in dental calculus from prehistoric populations.

The shotgun metagenomic sequencing of the T. forsythia genome from one individual (G12) provided even more granular details. 194 coding sequences potentially acquired through horizontal gene transfer were identified, suggesting the strain's ability to adapt and evolve over time. Notably, these acquired genes were associated with functions like restriction-modification systems (defense against foreign DNA), mobile genetic elements (facilitating horizontal gene transfer), and antibiotic biosynthesis (resistance mechanisms). These findings highlight the dynamic nature of bacterial genomes and their capacity to adapt to changing environments, including the development of resistance to antibiotics – a concern that continues to be highly relevant in modern medicine [^19].

In conclusion, this study demonstrates the power of metagenomic analysis in unraveling the mysteries of the ancient human microbiome. By analyzing dental calculus, we were able to identify a diverse bacterial community and even pinpoint evidence of the red complex, a prevalent cause of periodontal disease. Additionally, shotgun sequencing provided valuable insights into the evolutionary trajectory of specific pathogens, highlighting their ability to adapt and acquire new functionalities.

# Supplementary files for project report:

**Files**:
- `BI_Project_7_Popov.pdf`  -	report on the project in thesis format
- `07_Lab_journal.ipynb` -	laboratory journal with commands to reproduce pipeline

[^1]: Nam, N. N., Do, H. D. K., Loan Trinh, K. T. & Lee, N. Y. Metagenomics: An Effective Approach for Exploring Microbial Diversity and Functions. Foods 12, 2140 (2023).
[^2]: Brealey, J. C. et al. Dental Calculus as a Tool to Study the Evolution of the Mammalian Oral Microbiome. Mol. Biol. Evol. 37, 3003–3022 (2020).
[^3]: Shiba, T. et al. Comparison of Periodontal Bacteria of Edo and Modern Periods Using Novel Diagnostic Approach for Periodontitis With Micro-CT. Front. Cell. Infect. Microbiol. 11, 723821 (2021).
[^4]: Li, Q. et al. Dental calculus: A repository of bioinformation indicating diseases and human evolution. Front. Cell. Infect. Microbiol. 12, 1035324 (2022).
[^5]: Granehäll, L. et al. Metagenomic analysis of ancient dental calculus reveals unexplored diversity of oral archaeal Methanobrevibacter. Microbiome 9, 197 (2021).
[^6]: Kaur Boparai, A. et al. Dental calculus – An emerging bio resource for past SARS CoV2 detection, studying its evolution and relationship with oral microflora. J. King Saud Univ. Sci. 35, 102646 (2023).
[^7]: Bravo-Lopez, M. et al. Paleogenomic insights into the red complex bacteria Tannerella forsythia in Pre-Hispanic and Colonial individuals from Mexico. Philos. Trans. R. Soc. B Biol. Sci. 375, 20190580 (2020).
[^8]: Mohanty, R. et al. Red complex: Polymicrobial conglomerate in oral flora: A review. J. Fam. Med. Prim. Care 8, 3480–3486 (2019).
[^9]: Bolyen, E. et al. Reproducible, interactive, scalable and extensible microbiome data science using QIIME 2. Nat. Biotechnol. 37, 852–857 (2019).
[^10]: Hall, M. & Beiko, R. G. 16S rRNA Gene Analysis with QIIME2. Methods Mol. Biol. Clifton NJ 1849, 113–129 (2018).
[^11]: Callahan, B. J. et al. DADA2: High resolution sample inference from Illumina amplicon data. Nat. Methods 13, 581–583 (2016).
[^12]: Li, H. & Durbin, R. Fast and accurate short read alignment with Burrows–Wheeler transform. Bioinformatics 25, 1754–1760 (2009).
[^13]: Li, H. et al. The Sequence Alignment/Map format and SAMtools. Bioinformatics 25, 2078–2079 (2009).
[^14]: Quinlan, A. R. & Hall, I. M. BEDTools: a flexible suite of utilities for comparing genomic features. Bioinformatics 26, 841–842 (2010).
[^15]: Sedghi, L., DiMassa, V., Harrington, A., Lynch, S. V. & Kapila, Y. L. The oral microbiome: Role of key organisms and complex networks in oral health and disease. Periodontol. 2000 87, 107–131 (2021).
[^16]: Willis, J. R. & Gabaldón, T. The Human Oral Microbiome in Health and Disease: From Sequences to Ecosystems. Microorganisms 8, 308 (2020).
[^17]: Xiao, X. et al. Advances in the oral microbiota and rapid detection of oral infectious diseases. Front. Microbiol. 14, 1121737 (2023).
[^18]: Gancz, A. S. & Weyrich, L. S. Studying ancient human oral microbiomes could yield insights into the evolutionary history of noncommunicable diseases. F1000Research 12, 109 (2023).
[^19]: Culyba, M. J. & Van Tyne, D. Bacterial evolution during human infection: Adapt and live or adapt and die. PLoS Pathog. 17, e1009872 (2021).
