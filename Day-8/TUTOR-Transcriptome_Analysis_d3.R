

### Differential Expression Analysis

# #Install the necessary libraries
# install.packages("BiocManager")
# BiocManager::install("GEOquery")
# BiocManager::install("Biobase")

library(BiocManager)
library(GEOquery)
library(Biobase)

#---------------------------------------------
#Import the data
#GSE file
Sys.setenv("VROOM_CONNECTION_SIZE" = 131072*4)
gse <- getGEO("GSE15465", AnnotGPL=TRUE); show(gse) #9335 features, 21 samples
data <- as.data.frame(exprs(gse[[1]])) #transcriptome data
class(data) #data type
samples <- pData(gse[[1]])$title #sample information

#All datasets
Clim_Nlim <- data[, c(1:3, 7:9)]
colnames(Clim_Nlim) <- samples[c(1:3, 7:9)]

#Annotation
#gpl <- getGEO("GPL90")
genes <- as.list(fData(gse[[1]])$Platform_ORF) #gene annotation
probe_IDs <- as.list(fData(gse[[1]])$ID)
View(genes)
View(probe_IDs)

#----------------------------
#Log-transformation for normal distribution
Clim_Nlim <- log2(Clim_Nlim+1)
boxplot(Clim_Nlim)
barplot(as.matrix(Clim_Nlim))


#5 different nutrient limitations (carbon, nitrogen, sulfur, phosphorus or zinc)
#3 C-lim groups vs 3 N-lim groups
Clim_data <- Clim_Nlim[,1:3]
Nlim_data <- Clim_Nlim[,4:6]

#----------------------------
#Differential expression analysis
#t-test
pval <- 0 #object created before for for loop 
for (i in 1:length(genes)) {
  pval[i] <- t.test(Clim_data[i,], Nlim_data[i,])$p.value
}
pval <- as.list(pval)

#cut-off: 0.05
#Significantly changed genes
ind <- which(pval<0.05)
sigGenes1 <- genes[ind]
sigGenes1 <- sigGenes1[!is.na(sigGenes1)]
length(sigGenes1) #1934

#Benjamini-Horchberg correction
qval <- as.list(p.adjust(pval, method = "BH")) #BH: Benjamini Hochberg
sigGenes2 <- genes[which(qval < 0.05)]
sigGenes2 <- sigGenes2[!is.na(sigGenes2)]
qval_ <- qval[qval < 0.05]
length(sigGenes2) #41

#Bonferroni correction
new_cutoff <- 0.05/length(genes)
sigGenes3 <- genes[which(pval < new_cutoff)]
sigGenes3 <- sigGenes3[!is.na(sigGenes3)]
pval_ <- pval[which(pval < new_cutoff)]
length(sigGenes3) #3




