## Gene Ontology (GO)
1. Gene Ontology (GO) is a uniform vocabulary to _specify cellular location, molecular function_ and _biological process_
1. _Two building blocks of the GO:_
    1. GO annotation : the list of all annotation genes
    1. Ontology terms : information to characterize genes
1. Representation of the GO terms & their relationship in a **tree-like hierarchical structure**

##
Go annotations can be provided via two ways:
1. Experimentally verified (manual assignment)
1. Computationally derived

1. Manually assigned annotations -> better quality!
1. Major objective : generation of genome-specific annotations -> __insufficient experimental evidence__ (e.g., incomplete human genome annotation) -> __inference from the experiments__ related to other organisms

## 
GO terms provide knowledge for three main questions: 
1. What does the protein do? (Biological process)
1. How does it fulfill its avtivity? (molecular function)
1. Where does it fulfill its task? (cellular component)

## GO Enrichment Analysis
1. Go enrichment analysis -> indentification of the over -or under- represented terms within the geneset of interest.
1. Commonly used to analyze high-throughput data
    1. E.g., characterization of the differentially expressed genes

## GO & Pathway Enrichments Analysis
1. Identification of the enriched terms and pathways
1. _Different tools & web servers_ (organism-specific / general)
BiNGO, DAVID, KOBAS, AmiGO 2, **g:Profiler**, Gorilla, Ontologizer, GeneWeaver, etc.

# Homework
Report should include the following parts:
1. An introduction about your data based on literature (recall the first homework in this week)
1. A brief information about your data file (GSE & GPL). You must give the data & sample numbers and contents at least (recall the first homework in this week). 
1. Differential gene expression analysis to identify significantly changed genes using GEO2R or Rstudio (you can use a "multiple testing correction method" if you have a high number of significantly changed genes). You should interpret the most significantly changed genes (several genes with the lowest p-values) based on the literature. 
1. Hierarchial clustering analysis & heatmap through a tool or software (GEO (Dataset Cluster Analysis)/ shinyheatmap interface/ Rstudio - you can select one of them)
1. GO/pathway enrichment analysis (you can use any tools like g:Profiler)

#
You may have a look at my homework through [HERE](homework.R)
#