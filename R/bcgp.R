#' Performing Bayesian (Composite) Gaussian Processes
#' @description \code{bcgp} is the main function in this package. The user
#' will be able to choose any combination of prediction/variable
#' selection, stationary/non-stationary, and composite/standard 
#' Gaussian Processes 
#' @details I'll edit this as the package comes together
#' @usage \code{bcgp(trainingX, trainingY, ...)}
#' @param trainingX An \emph{n x d} matrix of input locations
#' @param trainingY An \emph{n x 1} vector of responses
#' @return An S4 method I hope. Who the fuck knows.
#' @examples
#' trainingX <- matrix(rnorm(5 * 2), ncol = 2, nrow = 5)
#' trainingY <- rnorm(5, 10, 3)
#' bcgp(trainingX, trainingY)
#' @seealso \code{\link{rescale}}
#' @author Casey Davis (\email{cbdavis33@@gmail.com})

bcgp <- function(trainingX, trainingY, ...){
  
  xTrain <- stdX(trainingX)
  yTrain <- scale(trainingY)
  
  ## Do other stuff. Lots of stuff
  
  output <- mcmc(xTrain, yTrain, ...) # Needs work
  
}
