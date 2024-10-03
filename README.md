This is a fork of clusrRcheck that can be installed on Windows.

# clustRcheck

## Overview

This package contains statistical hypothesis testing for discovering the presence of more than one mode in cluster distributions.

## Installation

You can install the development version from GitHub with `devtools`:

``` r
install.packages("devtools")
devtools::install_github("hally166/clustRcheck")
```

## Features

* Simple `dip` to calculate Hartigan & Hartigan's dip test for unimodality of an ordered vector.
* Compute Hartigan & Hartigan's dip test for unimodality for all clusters with `check_modality`.
* Build a heatmap with `heatmap_visual` where the results of the test are represented as colors.

![](https://github.com/Kawameicha/project_files/blob/master/clustRcheck.png)

## Usage 

``` r
library(tidyverse)
library(clustRcheck)
```

## Community Guidelines

This project is released with a [Code of Conduct](https://github.com/Kawameicha/project_files/blob/master/CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms. Feedback, bug reports (and fixes!), and feature requests are welcome; file issues or seek support [here](http://github.com/Kawameicha/clustRcheck/issues).

## References

 - P. M. Hartigan (1985) Computation of the Dip Statistic to Test for Unimodality; *Applied Statistics (JRSS C)* **34**, 320--325.
 - J. A. Hartigan and P. M. Hartigan (1985) The Dip Test of Unimodality; *Annals of Statistics* **13**, 70--84.

## Acknowledgement

`dip` is just a simple port of [Martin Maechler's R module](http://cran.r-project.org/web/packages/diptest/index.html) `diptest` which uses a slightly modified version of his R function for computing the dip test.

## License

[Apache 2.0](https://opensource.org/licenses/Apache-2.0) © Christoph Freier
