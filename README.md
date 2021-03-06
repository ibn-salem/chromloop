# sevenC

[![Travis build status](https://travis-ci.org/ibn-salem/sevenC.svg?branch=master)](https://travis-ci.org/ibn-salem/sevenC)
[![Coverage status](https://codecov.io/gh/ibn-salem/sevenC/branch/master/graph/badge.svg)](https://codecov.io/github/ibn-salem/sevenC?branch=master)
[![](https://img.shields.io/badge/release%20version-1.0.0-green.svg)](https://bioconductor.org/packages/sevenC)
[![](https://img.shields.io/badge/devel%20version-1.1.2-blue.svg)](https://github.com/ibn-salem/sevenC)
[![](https://img.shields.io/badge/download-390/total-blue.svg)](https://bioconductor.org/packages/stats/bioc/sevenC)
[![](https://img.shields.io/badge/doi-10.18129/B9.bioc.sevenC-yellow.svg)](https://doi.org/10.18129/B9.bioc.sevenC)

## Computational Chromosome Conformation Capture by Correlation of ChIP-seq at CTCF motifs

Chromatin looping is an essential feature of eukaryotic genomes and can bring
regulatory sequences, such as enhancers or transcription factor binding sites,
in the close physical proximity of regulated target genes. Here, we provide
sevenC, an R package that uses protein binding signals from ChIP-seq and
sequence motif information to predict chromatin looping events. Cross-linking of
proteins that bind close to loop anchors result in ChIP-seq signals at both
anchor loci. These signals are used at CTCF  motif pairs together with their
distance and orientation to each other to predict whether they interact or not.
The resulting chromatin loops might be used to associate enhancers or
transcription factor binding sites (e.g., ChIP-seq peaks) to regulated target
genes.

A more detailed explanation of the sevenC method together with prediction
performance analysis is available in the associated preprint:

Ibn-Salem, J. & Andrade-Navarro, M. A. Computational Chromosome Conformation
Capture by Correlation of ChIP-seq at CTCF motifs. bioRxiv 257584 (2018).
https://doi.org/10.1101/257584

## Intallation

To install the *sevenC* package, start R and enter:

```R
if (!requireNamespace("BiocManager", quietly=TRUE))
    install.packages("BiocManager")
BiocManager::install("sevenC")
```

Alternatively, the development version of *sevenC* can be installed from GitHub:

```R
#install.packages("devtools")
devtools::install_github("ibn-salem/sevenC")
```

## Basic usage example
Here we show how to use *sevenC* to predict chromatin looping interactions among
CTCF motif locations on chromosome 22. As input, we only use CTCF motif
locations and a single bigWig file from a STAT1 ChIP-seq experiment in human
GM12878 cells.

#### Get motif pairs
```R
library(sevenC)

# load provided CTCF motifs in human genome
motifs <- motif.hg19.CTCF.chr22

# get motifs pairs
gi <- prepareCisPairs(motifs, maxDist = 10^6)
```

#### Add ChIP-seq data and compute correaltion

```R
# use example ChIP-seq bigWig file
bigWigFile <- system.file("extdata", "GM12878_Stat1.chr22_1-30000000.bigWig", 
  package = "sevenC")

# add ChIP-seq coverage and compute correaltion at motif pairs
gi <- addCor(gi, bigWigFile)
```

####  Predict loops

```R
# predict looping interactions among all motif pairs
loops <- predLoops(gi)
```

For more detailed usage instructions, see the package 
[vignette](https://ibn-salem.github.io/sevenC/articles/sevenC.html) or 
[reference documentation](https://ibn-salem.github.io/sevenC/reference/index.html).


## Issues
Please report issues here: https://github.com/ibn-salem/sevenC/issues
