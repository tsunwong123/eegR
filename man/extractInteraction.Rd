% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anova.R
\name{extractInteraction}
\alias{extractInteraction}
\title{Extract interaction}
\usage{
extractInteraction(dat, sep = ".", sep_fixed = TRUE)
}
\arguments{
\item{dat}{a named list with array elemens, see details below}

\item{sep}{the character which separates the name of factor levels in the
model terms (default: ".")}

\item{sep_fixed}{logical indicating as sep should be treated "as is" while
splitting the model term names}
}
\value{
A named list is returned with the same names as the input, but the
list elements are ia_level x chan x time arrays.
}
\description{
\code{extractInteraction} computes the highest-order (interaction) effect
(i.e. the difference between differences) from means of each cell of the
design matrix
}
\details{
This function is not intended for direct use, and it only works for
specifically formatted data. The input data is supposed to be the return
value of \code{\link{marginalMeans}}; a named list which contains the
marginal means for each effect of an ANOVA. The names are the names of the
factor(s) - for interaction effects the factor names are separated by ":".
The list elements are three-dimensional arrays with the following dimension
names: modelterm, chan and time. For pure main effects, this function
computes all pairwise differences between the levels of the factor. For
interaction effects, the function computes all pairwise differences at the
level of the highest order interaction. That means for the A:B interaction
where factor A has levels Aa & Ab and factor B has levels Ba, Bb and Bc,
the function computes the following differences: (Aa-Ab) - (Ba-Bb),
(Aa-Ab) - (Ba-Bc), (Aa-Ab) - (Bb-Bc).
}

