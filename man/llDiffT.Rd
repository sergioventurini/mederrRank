\name{llDiffT}
\alias{llDiffT}
\title{
  Log-Likelihood Difference for the \eqn{\theta_i} Parameters
}
\description{
  This function computes the log-likelihood difference for the candidate \eqn{\theta_i} random effects. It is a helper function and not meant to be used on its own.
}
\usage{
llDiffT(dat, thetai, cand, deltaj, gamma, sigma2)
}
\arguments{
  \item{dat}{data frame containing the observed sample counts.}
  \item{thetai}{vector of previous accepted values for the \eqn{\theta_i} random effects.}
  \item{cand}{vector of candidate values for the \eqn{\delta_j} random effects.}
  \item{deltaj}{vector of previous accepted values for the \eqn{\delta_j} random effects.}
  \item{gamma}{last sampled value for the \eqn{\gamma} parameter.}
  \item{sigma2}{last sampled value for the \eqn{\sigma^2} parameter.}
}
\details{
  For further details see Myers et al. (2011).
}
\value{
  \code{llDiffT} returns the vector of log-likelihood differences.
}
\references{
  Myers, J. A., Venturini, S., Dominici, F. and Morlock, L. (2011), "Random Effects Models for Identifying the Most Harmful Medication Errors in a Large, Voluntary Reporting Database". Technical Report.
}
\author{
Sergio Venturini \email{sergio.venturini@unicatt.it}, 

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
