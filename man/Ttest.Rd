% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ttest.R
\name{Ttest}
\alias{Ttest}
\alias{isTtest}
\alias{osTtest}
\title{Workhorse functions of arrayTest}
\usage{
isTtest(obj, new_group = NULL, attribs = FALSE)

osTtest(obj, new_sign = NULL, attribs = FALSE)
}
\arguments{
\item{obj}{a list object returned by \code{\link{preTtest}}}

\item{new_group}{integer vector with values 1 and 2, corresponding to the 
group membership of the subjects. See \code{\link{isTtestRandomGroups}}.}

\item{attribs}{logical value whether dimension and type attributes shall be
attached to the returned statistic (default: FALSE)}

\item{new_sign}{integer vector with values -1L and 1L, corresponding to the 
sign of the value (one-sample t test) or difference of values (paired
samples t test). See \code{\link{osTtestRandomSigns}}.}
}
\value{
The functions return a vector (or array, if \code{attribs = TRUE}) 
of the same length as the number of columns in the input matrix. Auxiliary 
results ('Df', degrees of freedom; 'p_value', p-values) are added as 
attributes (if \code{obj$verbose == TRUE}).
}
\description{
\code{isTtest} and \code{osTtest} compute t-values and additional p-values & 
degrees of freedom if requested for independent samples (\code{isTtest}) and
one-sample or paired-samples (\code{osTest}).
}
\keyword{internal}

