% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dip.R
\name{dip}
\alias{dip}
\title{Hartigan's Algorithm for "The Dip Test for Unimodality"}
\usage{
dip(data, ...)
}
\arguments{
\item{data}{numeric vector to be tested}

\item{...}{Extra arguments, not used}
}
\value{
A `numeric` object
}
\description{
This is a generic function to compute Hartigan &
Hartigan's dip test for unimodality. The dip test measures
multimodality in a sample by the maximum difference, over all
sample points, between the empirical distribution function, and
the unimodal distribution function that minimizes that maximum
difference.
}
\note{
\code{dip} is just a simple port of \href{http://cran.r-project.org/web/packages/diptest/index.html}{Martin Maechler's R module
`diptest`} which uses a slightly modified version of his R
function for computing the dip test.
}
\examples{
dip(rnorm(100,10))

}
\references{
\itemize{
  \item P. M. Hartigan (1985) Computation of the Dip Statistic to Test for Unimodality;
  \emph{Applied Statistics (JRSS C)} \strong{34}, 320--325.
  \item J. A. Hartigan and P. M. Hartigan (1985) The Dip Test of Unimodality;
   \emph{Annals of Statistics} \strong{13}, 70--84.
}
}
