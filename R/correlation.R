#' Correlation Matrix
#'
#' This function allows us to get the correlation matrix for all numeric variables in the data for a particular year.
#' @param x The year we want to determine the statistics for.
#' @keywords NBA correlation matrix
#' @export
#' @examples
#' correlation()

correlation <- function(x) {
  require(dplyr)
  require(purrr)
  require(tidyverse)
  d <- tibble(df) %>%
    filter(Year == x)
  d_numeric <- keep(d, is.numeric)
  d_numeric <- drop_na(d_numeric)
  Mat <- cor(d_numeric)
  corrplot(Mat, method="color")

}
