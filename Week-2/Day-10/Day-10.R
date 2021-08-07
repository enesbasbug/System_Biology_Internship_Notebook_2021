#install the necessary libraries
install.packages("BiocManager")
BiocManager::install("GEOquery")
BiocManager::install("Biobase")

library(BiocManager)
library(GEOquery)
library(Biobase)

gse <- getGEO("GSE31432"); show(gse)
data <- as.data.frame(exprs(gse[[1]]))
class(gse)
sample <- pData(gse[[1]])$title

#All datasets
Trastuzumab_Pertuzumab <- data[, c(4:6, 7:9)]
colnames(Trastuzumab_Pertuzumab) <- as.list(c("Tra1","Tra2","Tra3","Per1","Per2","Per3"))

genes <- as.list(fData(gse[[1]]))
genes <- genes[["Symbol"]]
View(as.list(genes))

Trastuzumab_data <- Trastuzumab_Pertuzumab[,1:3]
Pertuzumab_data <- Trastuzumab_Pertuzumab[,4:6]

#------------------------------------------------------------------------

size = dim(data); geneLen=size[1]
pval <- 0
for (i in 1:geneLen) {
  pval[i] <- t.test(Trastuzumab_data[i,],Pertuzumab_data[i,])$p.value
}
pval <- as.list(pval)


#------------------------------------------------------------------------

cut-off:0.01
ind <-which(pval<0.01)
Tra_Per_sig <- Trastuzumab_Pertuzumab[ind, ]
genes <- genes[ind]
write.table(as.data.frame(genes[!is.na(genes)]), "/Users/senesbasbug/Desktop/Github/GTU_internship_notebook")
length(genes)

#------------------------------------------------------------------------
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

#------------------------------------------------------------------------

setwd("/Users/senesbasbug/Desktop/Github/GTU_internship_notebook")
install.packages("shiny")
install.packages("rsconnect")
install.packages("data.table")
install.packages("gplots")
install.packages("heatmaply")
library(shiny)
library(rsconnect)
library(data.table)
library(gplots)
library(heatmaply)
runApp("shinyheatmap")
