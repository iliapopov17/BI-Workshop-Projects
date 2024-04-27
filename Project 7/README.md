# Ancient Oral Chronicles: Unveiling Microbial Secrets Through Dental Calculus

This is a short version of the report. The full version is available here: [PDF](https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%207/BI_Project_7_Popov.pdf)

### Abstract
This study delves into the microbial communities preserved in dental calculus samples extracted from human remains dating back over a millennium. By analyzing these ancient biomolecules, we gain insights into historical diseases, dietary patterns, and the evolutionary trajectories of typical oral bacteria. Notably, the presence of the red complex - a group of pathogens associated with severe periodontal disease-stands out in ancient oral microbiomes.

### Introduction
The investigation of ancient human oral microbiomes offers a unique window into historical health, dietary habits, and ecological interactions. Dental calculus serves as an exceptional reservoir, preserving both microbial and host DNA. The consistent association of the red complex with periodontal disease underscores its relevance across time.

### Materials and Methods
To explore these ancient microbial secrets, 16S rRNA gene sequencing and shotgun sequencing techniques were employed on dental calculus samples. The QIIME2 pipeline facilitated microbiome characterization, while shotgun sequencing revealed intriguing regions of zero coverage in modern strains, suggesting adaptation mechanisms.

### Results
Amplicon sequencing identified dominant bacterial phyla, while shotgun sequencing provided granular details. Also acquired genes associated with defense, gene transfer, and antibiotic resistance were discovered.

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

<div style='justify-content: center'>
<img src="https://github.com/iliapopov17/BI-Workshop-miniProjects/blob/main/Project%207/img/TaxComp.png" align='center', width="50%">
</div>

_Figure 1. Taxonomic composition of analyzed ancient samples._

### Discussion
Metagenomic analysis sheds light on the ancient human microbiome. The red complex’s persistence and adaptive mechanisms hold implications not only for historical contexts but also for modern medicine.

### Data Availability

In this repository you can find:

- `BI_Project_7_Popov.pdf`  - report on the project in thesis format
- `Lab journal.ipynb` - laboratory journal with commands to reproduce pipeline
