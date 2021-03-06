% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{motif.hg19.CTCF.chr22.cov}
\alias{motif.hg19.CTCF.chr22.cov}
\title{CTCF motifs on human chromosome 22 with example coverage.}
\format{An object of class \code{GRanges} of length 917.}
\usage{
motif.hg19.CTCF.chr22.cov
}
\description{
This dataset is the same as \code{\link{motif.hg19.CTCF.chr22}} but with one
additional metadata colum, named "chip", holding ChIP-seq signals for all
motifs in a windows of 1000 bp around the motif center as
\code{\link[IRanges:AtomicList-class]{NumericList}}. The data is from a ChIP-seq experiment
for STAT1 in human GM12878 cells. The full bigWig file can be downloaded from
ENCODE (Dunham et al. 2012)
\url{http://hgdownload.cse.ucsc.edu/goldenPath/hg19/encodeDCC/wgEncodeSydhTfbs/wgEncodeSydhTfbsGm12878Stat1StdSig.bigWig}.
See \code{\link{motif.hg19.CTCF}} and \code{\link{motif.hg19.CTCF.chr22}} for
a more details and the motif data set.
}
\seealso{
\code{\link{motif.hg19.CTCF}}, \code{\link{motif.hg19.CTCF.chr22}}
}
\keyword{datasets}
