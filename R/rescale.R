#' Rescale a vector to [0, 1]
#' @description Rescales a vector to [0, 1]
#' @details Rescales a vector to [0, 1]. Not meant to be used
#' alone, only within \code{stdX}.
#' @usage rescale(x)
#' @param \code{x} A vector input
#' @return A vector rescaled to [0, 1]
#' @examples
#' rescale(rnorm(10, 0, 100))
#' @seealso \code{\link{stdX}}
#' @author Casey Davis (\email{cbdavis33@@gmail.com})
rescale <- function(x){
  
  minX <- min(x)
  scaled <- (x - minX)/(max(x) - minX)
  return(scaled)
  
}