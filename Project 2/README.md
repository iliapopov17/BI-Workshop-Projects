Supplementary files for project:

#### Low-frequency mutation in the hemagglutinin gene of the influenza virus H3N2 alter the epitope D and may account for cases of vaccination ineffectiveness
***[Kirill Petrikov](https://github.com/KirPetrikov) and Ilia Popov***

**Files**:
- `BI_Project_2_Petrikov-Popov.pdf` - report on the project in thesis format
- `Snakefile`  - rules file  for Snakemake workflow to reproduce pipeline
- `project2.yml` - file for setting up the conda/mamba virtual environment
- `vcf_parser.py` - Python script to extract values from vcf-file columns `REF`, `POS`, `ALT,` and `FORMAT:FREQ` to tsv-file.

**The script can be used standalone for any vcf.**

It is designed to be run from the command line. You must specify path to input file as first arg, optional: path to output file as second arg.

Default output filename: [INPUT_FILENAME]_selected.tsv.

*Example*
```bash
>>> python vcf_parser.py exmpl.vcf
>>> cat exmpl_selected.tsv
REF	COORD	ALT	FREQ,%
T	1458	C	0.84
```

### Instruction

**Don't forget to download files and rename if needed:**

**snakefile's folder must contain `{reference}.fna` - reference sequence, `{sample}.fastq` - sample reads.**

- Create new environment `RareSNP` or specified any name you want
```bash
conda env create -f project2.yml
#
conda env create -f project2.yml -n [ENV_NAME]
```

- To run Snakemake workflow specify output tsv-file as `{reference}.{sample}.tsv`. 
```bash
snakemake --cores=all -p reference_HA.sample_1.tsv
```

For `samtools mpileup` parameter `--max-depth` is set up to 50'000.

For `VarScan mpileup2snp` parameter `--min-var-freq` is set up to 0.001.
