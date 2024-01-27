# Project Overview

This repository contains code examples used to generate Figures 1 and 2 as presented in the [publication](link to publication).

## 1. RNA-seq Data Analysis

We conducted an analysis on publicly available RNA-seq data related to B cell differentiation, sourced from [GSE148924](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE148924).

## 2. Data Analysis and Visualization

The data analysis was executed using Python 3.7.11, leveraging key scientific libraries such as pandas, NumPy, matplotlib, and seaborn. Please refer to `GE_analysis.ipynb` for detailed Python code examples.

Additionally, R v. 4.2.1. was employed for generating Volcano plots and dot plots. The essential R libraries used include tidyverse, ggrepel, dplyr, and ggplot2. 
For Gene Ontology (GO) term enrichment analysis, the `enrichGO` function was utilized in R v. 4.2.1., along with clusterProfiler, org.Hs.eg.db, and AnnotationDbi libraries. Please refer to `VolcanoPlot_example.R` and `GOterm_example.R` for R code examples.

For a more detailed version of the methods employed, please refer to the [complete publication](link to full publication).
