\name{minorAlleleFrequency}
\alias{minorAlleleFrequency}
\alias{filterSNPs}
\alias{mafHist}
\title{
Functions for Working with Minor Allele Frequencies
}
\description{
These functions estimate the minor allele frequency, remove SNPs from
a dataset if they do not meet a minior allele frequency threshold, and
plot a histogram of minor allele frequencies.
}
\usage{
minorAlleleFrequency(SNPmat)
filterSNPs(SNPmat, minMAF = 0.05)
mafHist(SNPmat)
}
\arguments{
  \item{SNPmat}{
A numeric matrix of 0, 1, 2, with individuals in rows and SNPs in columns.
}
\item{minMAF}{
A number indicating the minimum minor allele frequency of SNPs to retain in
the dataset.
}
}
\value{
\code{minorAlleleFrequency} returns a vector of minor allele frequencies.
\code{filterSNPs} returns a matrix in the same format as SNPmat, but with
SNPs removed if they did not meet the threshold.  \code{minMAF} returns
nothing but plots a histogram.
}

\examples{
# set up a dataset for this example
mySNP <- matrix(sample(c(0, 1, 2), 64, replace = TRUE), nrow = 8, ncol = 8)

# run functions
minorAlleleFrequency(mySNP)
filterSNPs(mySNP)
mafHist(mySNP)
}

