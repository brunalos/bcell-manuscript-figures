# Differential Gene Expression Analysis: Volcano Plot
# Code for generating Figures 2A-F in the paper: https://www.frontiersin.org/articles/10.3389/fimmu.2022.1030409/full

# Clear workspace
rm(list =ls())

# Load packages
library(tidyverse)
library(readxl)
library(ggrepel)
library(dplyr)
library(EnhancedVolcano)
library(ggplot2)
library(cowplot)


# Import files
# Ensure to replace'gene_expression_file' with the actual name of your file.
read_excel("gene_expression_file") -> GE


# Create a column named 'diffexpressed'
# Adjust the cut-offs based on your specific requirements

GE$diffexpressed <- "No"

# For example, set 'UP' if log2FoldChange > 0.5 and p-value < 0.001
GE$diffexpressed[GE$log2FoldChange > 0.5 & GE$p_value < 0.001] <- "Up"

# Set 'DOWN' if log2FoldChange < -0.5 and p-value < 0.001
GE$diffexpressed[GE$log2FoldChange < -0.5 & GE1$p_value < 0.001] <- "Down"

# Change colors for visualization:
# Assign colors to different categories - "Down," "Up," and "No"
mycolors <- c("blue", "red", "gray")
names(mycolors) <- c("Down", "Up", "No")


# Assign gene names to points for differential expression (de) visualization:
# Create a new column "delabel" with gene names (or NA if not differentially expressed)
GE$delabel <- NA
GE$delabel[GE$diffexpressed != "No"] <- GE$GENE_ID[GE$diffexpressed != "No"]


# Re-plot, this time coloring points based on the "diffexpressed" column
p1 <- GE %>%
  ggplot(aes(x = log2FoldChange, y =  -log10(p_value), col=diffexpressed, label = delabel)) +
  geom_point() +
  theme_minimal() +
  #geom_text() +
  geom_text_repel() +
  geom_vline(xintercept=c(-0.5, 0.5), col="red") +
  geom_hline(yintercept=-log10(0.001), col="red") +
  scale_colour_manual(values = mycolors) +
  scale_y_continuous("-log10(padj)") +
  scale_x_continuous("log2FC") +
  NULL
