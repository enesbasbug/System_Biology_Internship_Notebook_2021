# Cluster analysis of transcriptome data

## Clustering approach

1. A common method for "grouping similar objects (genes/conditions with similar expression profiles)" -> interpretation of the gene expression data!

1. An **unsupervised** approach

1. **Investigation of the groups (clusters) in the data:**
    1. High similarity within cluster
    1. Low similarity between clusters
1. Gene-based & sample-based clustering (grouping of genes/conditions)

1. _Advantages of the clustering:_
    1. Identification of the co-expressed gene groups (fuctionally related genes) -> functional inference of the unknown genes
    1. Useful for network analysis & gene annotation
    1. Dimensional reduction (each cluester representing many genes -> studying the clusters instead of the genes.)

### 3 Types of common clustering approaches :
1. Hierarchial clustering (no defined cluster number)
1. K-means ("k-centers", 1 for each cluster)
1. SOM (self-organizing map) (flexible/changing centers)

# Hierarchial clustering method
1. The most common method for RNA-seq & microarray data!
1. We do not define initial cluster number!
1. Grouping of the data into _a tree of clusters_ in _an iterative manner_

##
2 Different ways in hierarchial clustering:
1. Agglomerative (more popular) :  
    1. Initial assumption : each pair is a seperate cluster Merging the clusters in a bottom-up fashion.
1. Divisive (higher omputational cost) :
    1. Initial assumption : a mega-cluster with all points Splitting clusters in a top-down fashion
##
1. Merging/Splitting of the clusters is based on the _mutual distances_ between clusters!
1. **A good clustering**
    1. Low distances withing the cluster (high similarity)
    1. High distances _between_ the clusters (low similarity)

# Graphical representation of the expression data
1. Dendogram
1. Heatmap & Dendogram

### Dendogram
1. Representation of the relationship between clusters
1. Easily visible clustered genes/samples

### Heatmap
1. Another common approach to represent gene expression data
1. Use of the heatmap:
    1. Identification of commonly regulated genes
    1. Identification of the altered genes across distinct conditions
    1. It can be combined with _clustering methods!_

1. Each row represents a single gene & each column represents samples
1. Assigment of the colors to genes:    
    1. The colour & density -> the magnitude of expression change

##
If you are more interested in heatmap and clustering, you may give a look at 'shinyheatmap' on the internet.

##
References : 
1. https://www.tomasbeuzen.com/post/clustering-mixed-data