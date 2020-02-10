# clustRcheck

## Overview

This package contains statistical hypothesis testing for discovering the presence of more than one mode in cluster distributions.

## Installation

You can install the development version from GitHub with `devtools`:

``` r
install.packages("devtools")
devtools::install_github("Kawameicha/clustRcheck")
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

## License

[Apache 2.0](https://opensource.org/licenses/Apache-2.0) © Christoph Freier
