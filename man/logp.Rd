\name{logp}
\alias{logp}
\title{
  Negative Log-Posterior Function of the Bayesian Hierarchical Model for Identifying the Most Harmful Medication Errors
}
\description{
  This function computes the negative log-posterior distribution of the Bayesian hierarchical model described in Myers et al (2011). It is a helper function and not meant to be used on its own.
}
\usage{
logp(theta, deltaj, sigma2, i, k, eta, dat)
}
\arguments{
  \item{theta}{value of the error profile random effect at which the log.posterior distribution is calculated.}
  \item{deltaj}{vector of hospital random effect values.}
  \item{sigma2}{scale parameter (\eqn{> 0}).}
  \item{i}{error profile index for which the calculate of the log.posterior distribution is needed.}
  \item{k}{degrees of freedom (\eqn{> 0}, maybe non-integer). \code{df = Inf} is allowed.}
  \item{eta}{skewness parameter (\eqn{> 0}).}
  \item{dat}{an object of \link{class} "\link{mederrData}".}
}
\details{
  For further details see Myers et al. (2011).
}
\value{
  \code{logp} returns a vector of log-posterior values.  
}
\references{
  Myers, J. A., Venturini, S., Dominici, F. and Morlock, L. (2011), "Random Effects Models for Identifying the Most Harmful Medication Errors in a Large, Voluntary Reporting Database". Technical Report.
}
\author{
Sergio Venturini \email{sergio.venturini@unibocconi.it}, 

Jessica A. Myers \email{jmyers6@partners.org}
}
\seealso{
   \code{\link{bhm.constr.resamp}},
   \code{\link{bhm.mcmc}},
   \code{\link{bhm.resample}}.
}
%\examples{
%
%}
\keyword{Medication Errors}
\keyword{Optimal Bayesian Ranking}
\keyword{ranking}
\keyword{ranks}
