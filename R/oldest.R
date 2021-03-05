#' Oldest NBA Player
#'
#' This function allows you to determine which NBA player is the oldest every year.
#' @param x The year we want to determine the statistics for.
#' @keywords NBA oldest player
#' @export
#' @examples
#' older()

oldest <- function(x) {
  require(magrittr)
  require(dplyr)
  df %>%
    dplyr::filter(Year == x) %>%
    dplyr::arrange(dplyr::desc(Age)) %>%
    head(1)

}
