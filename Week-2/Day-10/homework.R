
#install the necessary libraries
install.packages("BiocManager")
BiocManager::install("GEOquery")
BiocManager::install("Biobase")

library(BiocManager)
library(GEOquery)
library(Biobase)

# -------------------------------------------------

gse <- getGEO("GSE31432"); show(gse)
data <- as.data.frame(exprs(gse[[1]]))
class(gse)
sample <- pData(gse[[1]])$title

annotation <- fData(gse[[1]])
#All datasets
Trastuzumab_Pertuzumab <- data[, c(4:6, 7:9)]
colnames(Trastuzumab_Pertuzumab) <- as.list(c("Tra1","Tra2","Tra3","Per1","Per2","Per3"))

#Annotation
#gpl <- getGEO("GPL90")
genes <- as.list(fData(gse[[1]])$Symbol) #gene annotation
probe_IDs <- as.list(fData(gse[[1]])$ID)
View(genes)
View(probe_IDs)

#----------------------------
#Log-transformation for normal distribution
Trastuzumab_Pertuzumab <- log2(Trastuzumab_Pertuzumab+1)
boxplot(Trastuzumab_Pertuzumab)
barplot(as.matrix(Trastuzumab_Pertuzumab))


#
Trastuzumab_data <- Trastuzumab_Pertuzumab[,1:3]
Pertuzumab_data <- Trastuzumab_Pertuzumab[,4:6]

#----------------------------
#Differential expression analysis
#t-test
pval <- 0 #object created before for for loop 
for (i in 1:length(genes)) {
  pval[i] <- t.test(Trastuzumab_data[i,], Pertuzumab_data[i,])$p.value
}
pval <- as.list(pval)

#-----------------

#cut-off: 0.05
#Significantly changed genes
ind <- which(pval<0.05)
sigGenes1 <- genes[ind]
sigGenes1 <- sigGenes1[!is.na(sigGenes1)]
length(sigGenes1) ##1371

#Benjamini-Horchberg correction
qval <- as.list(p.adjust(pval, method = "BH")) #BH: Benjamini Hochberg // method = "bonferroni"
sigGenes2 <- genes[which(qval < 0.05)]
sigGenes2 <- sigGenes2[!is.na(sigGenes2)]
qval_ <- qval[qval < 0.05]
length(sigGenes2) #0???

#Bonferroni correction
new_cutoff <- 0.05/length(genes)
sigGenes3 <- genes[which(pval < new_cutoff)]
sigGenes3 <- sigGenes3[!is.na(sigGenes3)]
pval_ <- pval[which(pval < new_cutoff)]
length(sigGenes3) #0???

# ---------------
cut-off:0.01
ind <-which(pval<0.01)
Tra_Per_sig <- Trastuzumab_Pertuzumab[ind, ]
genes <- genes[ind]
write.table(as.data.frame(genes[!is.na(genes)], "/Users/senesbasbug/Desktop/Github/GTU_internship_notebook")) ## doesn't work !!!???
length(genes) #270

#--------------

install.packages("heatmap3")
library(heatmap3)
custom_col <- colorRampPalette(c("green","black","red"))(256)
h <- heatmap3(Tra_Per_sig, na.rm = TRUE, col = custom_col, key=TRUE, scale = "row")

clust_ <- hclust(as.dist(1-cor(t(Tra_Per_sig), method = "pearson")), method = "complete")
clusters <- cutree(clust_, k=2)
View(clusters)

clusterCols <-rainbow(length(unique(clusters)))

myClusterSideBar <- clusterCols[clusters]

heatmap3(Tra_Per_sig, na.rm = TRUE, col=custom_col, key=TRUE, Rowv=as.dendrogram(clust_), RowSideColors = myClusterSideBar, scale = "row")





