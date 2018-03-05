#include <Rcpp.h>
#include <math.h>
using namespace Rcpp;

//' Create a correlation matrix
//' 
//' \code{getCorMat} returns a correlation matrix
//' 
//' @param x An \emph{n x d} matrix.
//' @param rho A vector of length d
//' @return An \emph{n x n} correlation matrix
//' @examples
//' n <- 10
//' d <- 2
//' x <- matrix(runif(n * d), ncol = d, nrow = n)
//' rho <- runif(d, 0, 1)
//' getCorMat(x, rho)
//' @export
// [[Rcpp::export]]
NumericMatrix getCorMat(NumericMatrix x, NumericVector rho) {
  int i, j, k;
  int n = x.nrow();
  int d = x.ncol();
  double dist4;
  NumericMatrix R(n,n);
  
  for(i = 0; i < (n-1); i++) {
    R(i, i) = 1.0;
    for(j = (i+1); j < n; j++){
      R(i, j) = 1.0;
      for(k = 0; k < d; k++){
        dist4 = 4.0 * (x(i,k) - x(j,k));
        R(i,j) *= pow(rho[k], pow(dist4,2));
      }
      R(j,i) = R(i, j);
    }
  }
  R((n-1), (n-1)) = 1.0;
  return R;
}