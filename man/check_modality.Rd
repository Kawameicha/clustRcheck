% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clustRcheck.R
\name{check_modality}
\alias{check_modality}
\title{Statistical Check of Clusters for Unimodality}
\usage{
check_modality(data, cluster = "cluster", ...)
}
\arguments{
\item{data}{A `data.frame` object}

\item{cluster}{Specify the cluster column's name}

\item{...}{Extra arguments, not used}
}
\description{
\code{check_modality} computes Hartigan & Hartigan's dip
test for unimodality for all clusters.
}
