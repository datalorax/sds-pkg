
<!-- README.md is generated from README.Rmd. Please edit that file -->

# sds

<!-- badges: start -->

[![R-CMD-check](https://github.com/datalorax/sds-pkg/workflows/R-CMD-check/badge.svg)](https://github.com/datalorax/sds-pkg/actions)
<!-- badges: end -->

The **sds** package is designed to accompany the [Social Data Science
with R](https://www.sds.pub) book. It includes a function to load data
different datasets and will soon include
[learnr](https://rstudio.github.io/learnr/) apps for some of the more
introductory content.

## Installation

<!-- You can install the released version of sds from [CRAN](https://CRAN.R-project.org) with: -->

<!-- ``` r -->

<!-- install.packages("sds") -->

<!-- ``` -->

You can install the development version of the package from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("datalorax/sds-pkg")
```

## Example

There are multiple datasets used throughout the book. See all the
datasets [here](). We can load any of these datasets using the
`get_data()` function, passing the name of the dataset. For example.

``` r
library(sds)
benchmarks <- get_data("benchmarks")
benchmarks
#> # A tibble: 174 x 7
#>       sid sped     ethnicity  frl     ell     rdg_fall rdg_spr
#>     <dbl> <chr>    <chr>      <chr>   <chr>      <dbl>   <dbl>
#>  1 409687 Non-Sped Hispanic   FRL     Active       181     194
#>  2 409847 Sped     Black      FRL     Non-ELL      166     159
#>  3 491527 Sped     White      FRL     Non-ELL      216     198
#>  4 500147 Non-Sped Native Am. FRL     Non-ELL      203     204
#>  5 501027 Non-Sped Hispanic   FRL     Active       198     173
#>  6 501147 Non-Sped Hispanic   FRL     Active       188     173
#>  7 501217 Non-Sped Hispanic   FRL     Monitor      202     200
#>  8 501787 Non-Sped White      Non-FRL Active       182     206
#>  9 502417 Non-Sped Black      Non-FRL Non-ELL      194     191
#> 10 503127 Non-Sped Hispanic   FRL     Active       170     185
#> # … with 164 more rows
```

The `get_data()` function supports any of the following: `"benchmarks"`,
`"ds-bowl-2019"`, `"k-entry"`, `"sesame"`, `"state-test"`, `"titanic"`,
or `"violence"`, with others likely to be added later. You can then use
these datasets to follow along with any of the examples in the book.
