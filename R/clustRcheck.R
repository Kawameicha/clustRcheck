#' @title Statistical Check of Clusters for Unimodality
#'
#' @description \code{check_modality} computes Hartigan & Hartigan's dip
#' test for unimodality for all clusters.
#'
#' @param data A `data.frame` object
#' @param cluster Specify the cluster column's name
#' @param ... Extra arguments, not used
#'
#' @return NULL
#'
#' @import dplyr
#' @importFrom magrittr %>%
#'
#' @export

check_modality <- function(data,
                           cluster = "cluster", ...) {

  if(!is.data.frame(data))
    stop("Wrong input data, should be a data frame!")
  if(!cluster %in% colnames(data))
    stop("Missing input data, need to know cluster!")

  result <- data %>%
    rename(., cluster = cluster) %>%
    group_by(cluster) %>%
    summarise_if(is.numeric, list(~dip(.)))

  return(result)
  }

#' @title Visual Check of Clusters for Unimodality
#'
#' @description \code{heatmap_visual} builds a heatmap of all clusters where
#' the results of the test are represented as colors.
#'
#' @param data A `data.frame` object
#' @param cluster Specify the cluster column's name
#' @param ... Extra arguments, not used
#'
#' @return NULL
#'
#' @import dplyr
#' @import ggplot2
#' @importFrom magrittr %>%
#' @importFrom tidyr pivot_longer
#'
#' @export

heatmap_visual <- function(data,
                           cluster = "cluster", ...) {

  if(!is.data.frame(data))
    stop("Wrong input data, should be a data frame!")
  if(!cluster %in% colnames(data))
    stop("Missing input data, need to know cluster!")

  result <- data %>%
    rename(., cluster = cluster) %>%
    group_by(cluster) %>%
    pivot_longer(-cluster, names_to = "protein", values_to = "test") %>%
    ggplot(aes(x = protein, y = as.factor(cluster), fill = test)) +
    geom_tile(color = "white", size = .5) +
    scale_fill_gradient(low = "white", high = "red") +
    theme_minimal() +
    coord_flip() +
    theme(legend.title = element_blank(),
          axis.title   = element_blank())

  return(result)
}
