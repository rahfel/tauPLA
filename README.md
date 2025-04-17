
# snRNA-Seq data Processing Pipelines 

This repository provides a detailed workflow of the analytical pipeline used for processing single-nucleus RNA-sequencing (snRNA-seq) data in the study titled **"Early-stage seeding tau multimers drive cell type-specific transcriptional signatures."** The steps outlined here were designed to ensure rigorous data preprocessing, robust differential expression analysis, and biologically meaningful insights, all of which are integral to the study's findings. The RNA-sequencing data can be accessed through the Gene Expression Omnibus (accession ID: GSE293791).


## Table of Contents

- [Quality control of single-nucleus data](#qc)
- [Differential Expression Analysis](#DEA)
- [Pathway Enrichement Analysis](#WebGestaltR)
- [Genetic enrichment of association](#ldsc)
- [Pseudotime Aanalysis](#monocle)

## Quality control of single-nucleus data <a name="qc"></a>

For this study, stringent quality control (QC) measures were applied to single-nucleus RNA-seq data to filter out low-quality nuclei and technical artifacts. The steps used to carry out QC can be found here:


## Differential Expression Analysis <a name="dea"></a>

Differential expression analysis (DEA) was performed to identify cell-type-specific transcriptional signatures in response to early-stage tau seeding. The workflow for DEA was as follows:

1. **Tool Used**: 
   - The `MAST` package was employed for statistical modeling of single-cell data, as it accounts for the inherent sparsity and variability in single-nucleus RNA-seq datasets.

2. **Comparison Groups**: 
   - Differentially expressed genes (DEGs) were identified between tau-seeded and control nuclei within each major cell type (e.g., neurons, astrocytes, microglia).

3. **Significance Threshold**:
   - Genes with an adjusted p-value (FDR < 0.05) and a log fold change > 0.25 were considered significant.

4. **Key Results**:
   - The analysis revealed tau-driven transcriptional signatures that were specific to certain cell types, providing mechanistic insights into how tau pathology differentially impacts neurons versus glial cells.


## Pathway Enrichment Analysis <a name="pathway-enrichment"></a>

To interpret the biological significance of the DEGs, pathway enrichment analysis was conducted. This step aimed to uncover the molecular pathways and biological processes perturbed by tau seeding in a cell-type-specific manner. The steps taken can be found here:  Tool used WebGestaltR.

## Genetic Enrichment and Association <a name="genetic-enrichment"></a>

To link the transcriptional signatures with genetic risk factors for AD, we performed genetic enrichment analysis using linkage disequilibrium score regression (LDSC). The steps can be found [here](https://github.com/rahfel/VPA/blob/1ab5f6a70458a1c9c4dad33ca1d4b17e84460d1a/Codes/LDSC_ANALYSIS.R#L1-L50)


## Pseudotime Analysis <a name="pseudotime-analysis"></a>

To capture the dynamic transcriptional changes associated with tau pathology progression, pseudotime analysis was conducted using the `monocle3` package. Steps found [here]() 


