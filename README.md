# Project Overview

In the course of my doctoral studies, my colleague and I delved into the complex network that govern how cells transport and release proteins, a crucial aspect of their function.

For immune cells, especially lymphocytes, this process becomes pivotal during their activation and transformation phases. As these cells become activated, they enter a state where they produce and release significant amounts of vital substances such as cytokines, cytotoxins, or antibodies. Understanding how these cells efficiently and specifically manage this intricate dance of transporting and releasing substances is essential.

Our project delves into the world of B-lymphocytes, specifically during activation and differentiation. We employ a systematic bioinformatics approach, focusing on a process called alternative splicing, to uncover how RNA-based mechanisms influence intracellular trafficking and protein secretion.

To achieve this, we applied techniques outlined in the table of contents, and this repository includes code examples that generated Figures 1 (B-D) and 2 (A-F) presented in the [publication](https://www.frontiersin.org/articles/10.3389/fimmu.2022.1030409/full).

## Table of Contents
1. [RNA-seq Data Analysis](#1-rna-seq-data-analysis)
2. [Data Analysis and Visualization](#2-data-analysis-and-visualization)
   - [Installation](#installation)
3. [Citations](#citations)

## 1. RNA-seq Data Analysis

We conducted an analysis on publicly available RNA-seq data related to B cell differentiation, sourced from [GSE148924](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE148924). For a more detailed version of the methods employed, please refer to the [complete publication](https://www.frontiersin.org/articles/10.3389/fimmu.2022.1030409/full).

## 2. Data Analysis and Visualization

The data analysis was executed using Python 3.7.11 and R v. 4.2.1. Ensure you have the required libraries installed before running the code examples.

### Python Libraries

#### Requirements

- Python 3.7.11 (or above)
- Jupyter Notebook (optional, for running `GE_analysis.ipynb`)

#### Installation

```bash
pip install pandas==1.3.3 numpy==1.21.2 seaborn==0.11.2 matplotlib==3.4.3 scikit-learn==0.24.2
```

### R Libraries

#### Requirements

- R v. 4.2.1
- RStudio (optional, for running R scripts interactively)

#### Volcano Plot

#### Installation

```R
install.packages(c("tidyverse", "readxl", "ggrepel", "dplyr", "EnhancedVolcano", "ggplot2", "cowplot"))
```

#### Gene Ontology (GO) Term Enrichment Analysis

#### Installation

```R
install.packages(c("tidyverse", "readxl", "ggrepel", "dplyr", "clusterProfiler", "org.Hs.eg.db", "AnnotationDbi", "ggplot2", "cowplot"))
```

---

For detailed Python code examples, please refer to [`GE_analysis.ipynb`](GE_analysis.ipynb).

For R code examples, refer to [`VolcanoPlot_example.R`](VolcanoPlot_example.R) and [`GOterm_example.R`](GOterm_example.R).

## Citation
```
Ostwaldt F., Los B., Heyd F. In silico analysis of alternative splicing events implicated in intracellular trafficking during B-lymphocyte differentiation. Front Immunol. 2022 Nov 10:13:1030409. doi: 10.3389/fimmu.2022.1030409. eCollection 2022.

