# Week - 1 

### **What is transcriptomics?**

Definition: 
*“The branch of genetics, that study the total RNA or mRNA present in a cell or tissue and related technologies used to study it, is called transcriptomics.”*

Or

_“Using the high throughput technologies such as microarray or RNA-seq; studying the transcriptome- a total set of mRNA prsent in a cell is known as transcriptomics”_


###### Before making the decision to go with RNA sequencing or microarrays, several questions must be answered..

### Practical Questions

1. What genome information is available (if any) for my species of interest?
1. How much data analysis expertise do I have or have access to?
1. How much money do I have to spend?

### Project Goals

1. Is accurate, absoulte quantitaion important?
1. Is it important to discover novel genes?
1. Do I want to be able to distinguish isoforms and the expression difference between the isoforms?
1. Am I interested in transcripts likely to be expressed at very low or very high levels?
1. Am I interested in structural information such as alternative splicing and gene fusions?

## Microarrays

1. Robust, reliable method, proven oover decades of use
1. High through-put method – 1000s of samples analyzed per month
1. Streamlined handling – can be easily automated
1. Straightforward data analysis
1. Short turn-around time – 5 days
1. Lower cost

1. Dependent on prior sequence knowledge
1. Cannot detect structural variations
1. Cannot detect isoforms
1. Hybridization and sample labeling biases
1. Not an absolute quantitation method

## RNA Sequencing

1. Provides a comprehensive view of the transcriptome.
1. Not dependent on any prior sequence knowledge.
1. Increased dynamic range and tunable sensitivity.
1. Can detect structural variations such as gene fusions and alternative splicing events.
1. A truly digital solution (absolute abundance vs relative abundance)

1. Technology is new to most researchers
1. Data storage is more challenging
1. Analysis is more complex – no standard protocol
1. Specialized computing infrastructure and personnel are required
1. More expensive than microarray
 
##


## DNA Microarray measurement of gene expresion
 
_A basic protocol for a DNA microarray is as follows:_

1. Isolate and purify mRNA from samples of interest.
1. Reverse transcribe and label the mRNA
1. Hybridize the labeled target to the microarray
1. Scan the microarray and quantitate the signal

##### Video: (BETTER WATCH)
[DNA Microarray Methodology](https://www.youtube.com/watch?v=0ATUjAxNf6U&ab_channel=BioNetwork) 

##
### What is cDNA?
**Complementary DNA** (cDNA) is a copy of a region of a strand of DNA. For example, if the original DNA stand had a sequence of ATT, the complementary sequence will be TAA. The cDNA will bind to the complementary site on the DNA strand.


### What is cRNA?
**Complementary RNA** (cRNA) is a copy of a strand of RNA that will bind to the appropriate region of the original molecule. If the original RNA stand had a base sequence of AUU, for example, the sequence of the cRNA strand would be UAA.
##

## A typical RNA-seq experiment consists of the following steps:

1. Design Experiment. Set up the experiment to address your questions.
1. RNA Preparation. Isolate and purify input RNA.
1. Prepare Libraries. Convert the RNA to cDNA; add sequencing adapters.
1. Sequence. Sequence cDNAs using a sequencing platform.
1. Analysis.


##
## What are Introns and Exons?

Introns and exons are nucleotide sequences within a gene. Introns are removed by RNA splicing as RNA matures, meaning that they are not expressed in the final messenger RNA (mRNA) product, while exons go on to be covalently bonded to one another in order to create mature mRNA.

Introns can be considered as **in**tervening sequences, and exons as **ex**pressed sequences.

##
## Bioinformatics Databases

"A biological database is a large, organized body of persistent data, usually associated with computerized software designed to update, query, and retrieve components of the data stored within the system. A simple database might be a single file containing many records, each of which includes the same set of information."
A few popular databases are **GenBank from NCBI** (National Center for Biotechnology Information), **SwissProt from the Swiss Institute of Bioinformatics** and **PIR from the Protein Information Resource**.
1. GenBank: GenBank (Genetic Sequence Databank) is one of the fastest growing repositories of known genetic sequences.
1. EMBL: The EMBL Nucleotide Sequence Database is a comprehensive database of DNA and RNA sequences collected from the scientific literature and patent applications and directly submitted from researchers and sequencing groups.
1. SwissProt: This is a protein sequence database that provides a high level of integration with other databases and also has a very low level of redundancy (means less identical sequences are present in the database).

##

On day-3, I downloaded a file named 'GSE124537-GPL16570_series_matrix.txt' and then endeavoured data tampering. You may also check this out via this link https://github.com/enesbasbug/System_Biology_Internship_Notebook_2021/blob/main/Day-3/Day-3.ipynb .

##

On day-4, I created a xlsx file that has a bunch of transcription data about brain cancer. Eventually, our tutor wanted us to gather everything we did this week, and I called this file Day-5.
You may also reach this xlsx file through this link https://github.com/enesbasbug/System_Biology_Internship_Notebook_2021/tree/main/Day-4 .



#### References:
1. https://geneticeducation.co.in/what-is-transcriptomics/#What_is_transcriptomics
1. https://eurofinsgenomics.eu/en/eurofins-genomics/material-and-methods/transcriptomics/
1. https://www.phgfoundation.org/explainer/transcriptomics
1. https://www.youtube.com/watch?v=twNBg2CAJPI&ab_channel=XploreBio
1. https://www.youtube.com/channel/UCAEzn4k6BBOUTalSY9WR91w
1. https://www.youtube.com/watch?v=0ATUjAxNf6U&ab_channel=BioNetwork
1. https://bitesizebio.com/7206/introduction-to-dna-microarrays/
1. https://science.jrank.org/pages/1653/Complementary-DNA.html#ixzz71pUXnPuL
1. https://rnaseq.uoregon.edu/
1. https://www.news-medical.net/life-sciences/What-are-introns-and-exons.aspx
1. https://www.longdom.org/scholarly/bioinformatics-databases-journals-articles-ppts-list-2876.html
