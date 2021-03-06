% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/warp.R
\name{align}
\alias{align}
\title{Adjust ERP curves by time warping}
\usage{
align(erp, w, time_dim = "time")
}
\arguments{
\item{erp}{the numeric vector or array of ERPs}

\item{w}{the numeric vector or array of the warping weights (see 
\code{\link{warp}})}

\item{time_dim}{either a numeric or a character index indicating the time
dimension of the ERP array (default: "time")}
}
\description{
\code{align} transforms the ERP curves by aligning them on the time 
dimension.
}
\details{
This function is useful if the warping weights are computed on a 
specific subset of the ERP data, but the whole array should be aligned using 
these pre-computed weights. So the standard analysis pipeline is to call 
\code{\link{warp}} on the subset of the ERPs, store the computed weights in 
an array, and call \code{align} on the original (non-subsetted) array of ERPs
and the stored warping weights.\cr
In the simplest case, \code{erp} and \code{w} are vectors. They must be of 
equal length. In the second case, \code{erp} and \code{w} are arrays of 
equal dimensions. In the third case, \code{erp} is an array with more
dimensions than \code{w}. In this scenario \code{erp} and \code{w} must 
have named dimensions, and all dimension identifiers in \code{w} must be
present in \code{erp}.
}
\examples{
# load example data
data(erps)

# collapse stimclass and pairtype dimensions + downsample
x <- avgDims(erps, c("stimclass", "pairtype"))
x <- avgBin(x, "time", bin_length = 3L)
str(x) 

# let's assume we want to align the individual ERPs so that the individual
# variation in the peak latencies can be controlled for;
# we will use the Global Field Power instead of warping the ERPs for each
# channel separately
w <- warp(compGfp(x), align_dim = "id", verbose = TRUE) # takes some time

# now perform the alignment on the original data
x_aligned <- align(x, w)

# bind the original and the aligned arrays
x_all <- bindArrays(raw = x, aligned = x_aligned, along_name = "warp")

# plot the GFP of the raw and aligned curves
plotERParray(compGfp(x_all), sepdim = "id", 
             minus_up = FALSE, grid = c(2, 1))

# repeat the above analysis with lambda = 1 to demonstrate how 
# the lambda parameter affects the results
w <- warp(compGfp(x), align_dim = "id", lambda = 1) # takes some time

# now perform the alignment on the original data
x_aligned <- align(x, w)

# bind the new results to the previous array
x_all <- bindArrays(x_all, aligned_lambda1 = x_aligned, along_name = "warp")

# plot the GFP of the raw, the default aligned, and the new aligned curves
plotERParray(compGfp(x_all), sepdim = "id", 
             minus_up = FALSE, grid = c(3, 1))
             
}
\seealso{
\code{\link{warp}}
}

