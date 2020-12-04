#' tictoc seconds
#'
#' Formats the output from tictoc timings so they can be more easily included in text
#'
#' @param log_n An integer specifying the number from \code{tictoc::tic.log}
#' @param digits Number of digits to round elapsed time to.
#'
#' @export
tic_seconds <- function(log_n, digits = 2) {
  show <- tic.log(format = FALSE)[[log_n]]

  as.numeric(round(show$toc - show$tic, digits))
}
