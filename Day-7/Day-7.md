## Different Expression (DE) Analysis

1. Multiple interactions between tens of thousands of molecules -> _inherent complexity biological process_
1. Indentification of _quantitative changes_ between _different groups/conditions_
    1. E.g., healthy cells vs tumour cells (two-color cDNA microarrays can be used!)
1. **Understanding the molecular basis of phenotypic variation**

##

1. A basic approach is **fold change!**
    1. The simplest method
    1. No need biological replicates
    1. **No real statistics!**

1. _Statistical significance test:_
    1. Parametric test (e.g., use of the mean and standard deviation)
    1. Nonparametric test (no need for any parameters)


![Types of analyses and their corresponding tests
](https://miro.medium.com/max/1400/1*Nb8E6tpSmwSjJNkdvGUFGQ.png)

##
1. Parametric test | **Student's T-test**
    1. One of the most __commonly used__ method
    1. Proper for the _normally distributed_ samples.
        1. _Normal (Gaussian) distribution:_ symmetrically distributed data with no skew! (mean = median = mode)
    1. At least __3 replicates__ are preferred
    1. _Differential expression analysis_
        1. Identification of the significant genes with __a large different in "mean" expression__ and __a small amount of varianca__
    
    1. __Hypothesis testing__ 
        1. H0: No significant changes in the expression levels
        1. H1: Potential significant changes (upregulation/downregulation)
        1. t-test -> calculation of probability values (_p-values_) | (_cut-off_: 0.01 or 0.05 & p-value >= cut-off --> **accept H0!**)

    1. **Multiple testing correction**
        1. P-value : a probability measure _to select differentially expressed genes_ for the specified cut-off threshold (the probability to find a significance _by chance/randomly_)!
        1. cut-off : 0.05 -> 5% chance of making a false positive inference! (500 out of 10.000 genes)
        1. Lower cut-off threshold & __multiple testing correction__
            1. A smaller number of significantly changed genes
            1. Lower false positives (but false negatives!)
        1. _Multiple testing correction approaches_
            1. Family-wise error (FEW) rate
                1. Bonferroni Correction -> The simplest FWE method
            1. False discovery rate (FDR)
                1. Benjamini-Hochberg Correction -> A common FDR method

1. Non-parametric test
    1. _Student's t-test has several drawbacks:_
        1. A ned for normal distribution
        1. Sensitivity to outliners (removal of them before analysis)
    1. Non-parametric tests:
        1. Wilcoxon signed-rank test, Wilcoxon rank-sum test, etc.
        1. Order/rank & median-based comparison
        1. No need for the parameters like mean
        1. More **robust to outliners**
        1. **Distribution-free**

##

I tried to analyze [the data](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE175361) with GEO2R, and also tried to manipulate the data by changing its cut-off value. 

1. Benjamini & Hochberg (False discovery rate) || cut-off : 0.05
![pict1](Day-7/img1.png)


1. Bonferroni || cut-off : 0.01
![pict2](Day-7/img2.png)


##
References :
1. https://medium.com/@itcalderon11/parametric-vs-nonparametric-statistical-tests-2de44db18760
1. https://www.nature.com/articles/6500412
1. https://www.youtube.com/watch?v=EUPmGWS8ik0