#' tictoc seconds
#'
#' Formats the output from tictoc timings so they can be more easily included in text
#'
#' @param log_n An integer specifying the number from \code{tictoc::tic.log}
#'
#' @export
tic_seconds <- function(log_n) {
round(tic.log(format = FALSE)[[log_n]], 2)
}
