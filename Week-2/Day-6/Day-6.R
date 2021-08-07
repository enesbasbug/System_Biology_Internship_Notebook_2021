a <- c(2, 4 ,6)
a

b <- 2:6
b

c <- seq(2, 3, by=0.5)
c

for (i in 1:4){
  j <- i + 10
  print(j)
}

while(i < 5){
  print(i)
  i <- i + 1
}

m <- matrix(1:9 , nrow=3, ncol=3)
m

df <- data.frame(x= 1:3, y= c('a', 'b', 'c'))


# -------------------------------------------------


#install the necessary libraries
install.packages("BiocManager")
BiocManager::install("GEOquery")
BiocManager::install("Biobase")

library(BiocManager)
library(GEOquery)
library(Biobase)

# -------------------------------------------------

gse <- getGEO("GSE141167"); show(gse)
data <- as.data.frame(exprs(gse[[1]]))
class(gse)





