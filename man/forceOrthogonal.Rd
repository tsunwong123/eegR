% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anova.R
\name{forceOrthogonal}
\alias{forceOrthogonal}
\title{Force orthogonality in a model matrix}
\usage{
forceOrthogonal(model_matrix, between = character())
}
\arguments{
\item{model_matrix}{the model matrix}

\item{between}{the names of between-subject factors}
}
\description{
\code{forceOrthogonal} checks if a model matrix is orthogonal and makes
adjustments if it is not.
}
\keyword{internal}

