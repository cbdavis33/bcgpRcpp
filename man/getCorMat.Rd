% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{getCorMat}
\alias{getCorMat}
\title{Create a correlation matrix}
\usage{
getCorMat(x, rho)
}
\arguments{
\item{x}{An \emph{n x d} matrix.}

\item{rho}{A vector of length d}
}
\value{
An \emph{n x n} correlation matrix
}
\description{
\code{getCorMat} returns a correlation matrix
}
\examples{
n <- 10
d <- 2
x <- matrix(runif(n * d), ncol = d, nrow = n)
rho <- runif(d, 0, 1)
getCorMat(x, rho)
}
