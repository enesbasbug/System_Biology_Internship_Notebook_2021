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