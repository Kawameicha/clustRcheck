#' @title Hartigan's Algorithm for "The Dip Test for Unimodality"
#'
#' @description This is a generic function to compute Hartigan &
#' Hartigan's dip test for unimodality. The dip test measures
#' multimodality in a sample by the maximum difference, over all
#' sample points, between the empirical distribution function, and
#' the unimodal distribution function that minimizes that maximum
#' difference.
#'
#' @param data numeric vector to be tested
#' @param ... Extra arguments, not used
#'
#' @return A `numeric` object
#'
#' @examples
#' dip(rnorm(100,10))
#'
#' @note \code{dip} is just a simple port of \href{http://cran.r-project.org/web/packages/diptest/index.html}{Martin Maechler's R module
#' `diptest`} which uses a slightly modified version of his R
#' function for computing the dip test.
#'
#' @references
#' \itemize{
#'   \item P. M. Hartigan (1985) Computation of the Dip Statistic to Test for Unimodality;
#'   \emph{Applied Statistics (JRSS C)} \strong{34}, 320--325.
#'   \item J. A. Hartigan and P. M. Hartigan (1985) The Dip Test of Unimodality;
#'    \emph{Annals of Statistics} \strong{13}, 70--84.
#' }
#'
#' @export
#'
#' @useDynLib clustRcheck diptst

dip <- function(data, ...) {

  if (!class(data) == "numeric")
    stop("data should be a numeric!")
  if (length(data) <= 1)
    stop("data length should be >1!")
  if (is.unsorted(data))
    data <- sort(data)

  n <- as.integer(length(data))

  result <- .C("diptst",
               x	      = as.double(data),
               n	      = n,
               dip      = double(1),
               lo.hi    = integer(4),
               ifault   = integer(1),
               gcm      = integer(n),
               lcm      = integer(n),
               mn	      = integer(n),
               mj	      = integer(n),
               debug    = as.integer(FALSE),
               min.is.0 = as.logical(FALSE))[3]

  return(result[[1]])
}
