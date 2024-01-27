# GO Enrichment Analysis Code for Figure 1D: [Link to Paper](https://www.frontiersin.org/articles/10.3389/fimmu.2022.1030409/full)

# Clear workspace
rm(list =ls())

# Load packages
library(tidyverse)
library(readxl)
library(ggrepel)
library(dplyr)
library(clusterProfiler)
library(org.Hs.eg.db) # Homo sapiens database
#library(org.Mm.eg.db) # Mus musculus database
library(AnnotationDbi)
library(ggplot2)
library(cowplot)

# enrichGO notes:


# ontology (ont): one of "BP", "MF", and "CC" subontologies, or "ALL" for all three.
# gene: list of genes you want to analyse.
# OrgDb: reference organism (list of all genes).
# universe: background genes. If missing, the all genes listed in the database  will be used as background.
# pvalueCutoff: adjusted pvalue cutoff on enrichment tests to report (default 0.05).
# pAdjustMethod: one of "holm", "hochberg", "hommel", "bonferroni", "BH", "BY", "fdr", "none".
# keyType: "SYMBOL", "ENSEMBL" or "ENTREZID".


# Import Files:
# Ensure to replace 'gene_expression_file' and 'all_genes_file' with the actual name of your files.

read_excel("gene_expression_file") -> GE  
read_excel("all_genes_file") -> background 


# Select Genes for Analysis:
# For iexample, only genes with a log2fold change greater than 0.5:

pFC <- GE[GE$log2FoldChange > 0.5]


# Perform GO Enrichment Analysis using enrichGO:

GO_results <- enrichGO(gene = pFC$GENE_ID, OrgDb = "org.Hs.eg.db", 
                       universe = background$ID, keyType = "SYMBOL", ont = "BP", pAdjustMethod = "fdr")

# Save the results as a DataFrame.

as.data.frame(GO_results) 

# Visualize the Data:
# Plotting the top 10 most significantly enriched GO terms.

fig1 <- plot(dotplot(GO_results, label_format = 100, showCategory=10, font.size=8))

