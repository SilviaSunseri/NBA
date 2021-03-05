#' Highest scores
#'
#' This function allows you to determine which NBA player scored the highest point every year.
#' @param x The year we want to determine the statistics for.
#' @keywords NBA highest scores
#' @export
#' @examples
#' more_points()


more_points <- function(x){
  require(dplyr)
  df %>%
    dplyr::filter(Year == x) %>%
    dplyr::top_n(1, PTS) %>%
    dplyr::select(Year, Player, PTS)

}
