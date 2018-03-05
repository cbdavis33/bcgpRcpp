#' Rescale each column of a matrix to [0, 1]
#' @description Rescale each column of a matrix to [0, 1]
#' @details Rescale each column of a matrix to [0, 1]
#' @usage stdX(x)
#' @param \code{x} A matrix input
#' @return A matrix with columns rescaled to [0, 1]
#' @examples
#' stdX(matrix(rnorm(5 * 2), ncol = 2, nrow = 5))
#' @seealso \code{\link{rescale}}
#' @author Casey Davis (\email{cbdavis33@@gmail.com})

stdX <- function(x){
  
  return(apply(x, 2, rescale))

}
