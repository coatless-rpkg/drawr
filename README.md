
<!-- README.md is generated from README.Rmd. Please edit that file -->

# drawr

<!-- badges: start -->

[![R-CMD-check](https://github.com/coatless-rpkg/drawr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/coatless-rpkg/drawr/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of drawr is to draw different R data structures on graphics

## Installation

You can install the development version of drawr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("coatless-rpkg/drawr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(drawr)

mat_3x5 = matrix(round(rnorm(15, 0, 4), 2), ncol = 5)
visualize_matrix_data(mat_3x5, highlight_cells = mat_3x5 > 0) 
```

<img src="man/figures/README-example-1.png" width="100%" />