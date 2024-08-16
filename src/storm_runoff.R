#' Predict storm runoff volume
#'
#' @description
#' This is a function that estimates the storm runoff volume using inputs for the impervious fraction, watershed area, and design storm rainfall depth (here set as 1.0)
#'
#'
#' @param ia The fraction of the watershed that is considered "impervious" (unitless)
#' @param area The watershed area (acres)
#'
#' @return
#' @export
#'
#' @examples
#' predict_runoff(ia = 0.9, area = 1000)
predict_runoff <- function(ia, area) {
  rv <- 0.05 + 0.9 * ia
  volume <- 3630 * 1.0 * rv * area
  return(volume)
}




