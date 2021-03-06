% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anova.R
\name{anovaRandomIndices}
\alias{anovaRandomIndices}
\title{Random permutations for \code{\link{arrayAnova}} and \code{\link{tanova}}}
\usage{
anovaRandomIndices(input, nperm, seed)
}
\arguments{
\item{input}{a list returned by \code{\link{preAnova}}}

\item{nperm}{integer value; the number of permutations}

\item{seed}{an integer value which specifies a seed (default: NULL), or a
list of arguments passed to \code{\link{set.seed}}}
}
\value{
A matrix with as many rows as the design matrix and 'nperm' columns
}
\description{
\code{anovaRandomIndices} creates a matrix of \code{nperm} random
permutations
}
\seealso{
\code{\link{arrayAnova}} and \code{\link{tanova}}
}
\keyword{internal}

