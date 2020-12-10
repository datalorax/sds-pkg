#' Function to download specific datasets used throughout the book
#'
#' @param dataset The name of the dataset. Should be one of "benchmarks",
#' "ds-bowl-2019", "k-entry", "sesame",  "state-test", "titanic", or
#' "violence"
#' @export
#'
get_data <- function(dataset) {
  base_url <- "https://github.com/datalorax/sds-data/raw/main/data/"

  d <- read_csv(paste0(base_url, dataset, ".csv"),
           col_types = cols())
  if(dataset == "ds-bowl-2019") {
    d$accuracy_group <- factor(d$accuracy_group,
                               levels = 0:3,
                               ordered = TRUE)
  }
  d
}
