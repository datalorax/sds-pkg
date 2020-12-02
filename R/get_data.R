#' Function to download specific datasets used throughout the book
#'
#' @param dataset The name of the dataset. Should be one of "benchmarks",
#' "ds-bowl-2019", "k-entry", "sesame",  "state-test", "titanic", or
#' "violence"
#' @export
#'
get_data <- function(dataset) {
  base_url <- "https://github.com/datalorax/sdsr-data/raw/main/data/"

  read_csv(paste0(base_url, dataset, ".csv"),
           col_types = cols())

}
