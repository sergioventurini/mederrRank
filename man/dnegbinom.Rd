\name{dnegbinom}
\alias{dnegbinom}
\title{
  The Negative Binomial Distribution
}
\description{
  Density function for the negative binomial distribution with parameters \code{alpha} and \code{prob}.
}
\usage{
dnegbinom(x, alpha, prob, log.p = FALSE)
}
\arguments{
  \item{x}{vector of (non-negative integer) quantiles.}
  \item{alpha}{target for number of successful trials. Must be strictly positive, need not be integer.}
  \item{prob}{probability of success in each trial. \code{0 < prob <= 1}.}
  \item{log.p}{logical; if TRUE, probabilities p are given as log(p).}
}
\details{
  The negative binomial distribution with parameters \code{alpha} = \eqn{\alpha} and \code{prob} = \eqn{p} has density
  \deqn{\frac{\Gamma(x + \alpha)}{\Gamma(\alpha) x!} p^\alpha (1-p)^x}
  for \eqn{x = 0,1,\ldots,\alpha > 0} and \eqn{0 < p \leq 1}.
  This represents the number of failures which occur in a sequence of Bernoulli trials before a target number of successes is reached.
}
\value{
  \code{dnegbinom} gives the density corresponding to the \code{alpha} and \code{prob} values provided.
}
\references{
  DuMouchel W. (1999), "Bayesian Data Mining in Large Frequency Tables, with an Application to the FDA Spontaneous Reporting System". The American Statistician, 53, 177-190.

  Myers, J. A., Venturini, S., Dominici, F. and Morlock, L. (2011), "Random Effects Models for Identifying the Most Harmful Medication Errors in a Large, Voluntary Reporting Database". Technical Report.
}
\author{
Sergio Venturini \email{sergio.venturini@unibocconi.it}, 

Jessica A. Myers \email{jmyers6@partners.org}
}
\seealso{
   \code{\link{dmixnegbinom}},
   \code{\link{dnbinom}}.
}
%\examples{
%
%}
\keyword{Counts}
\keyword{DuMocuhel}
\keyword{Medication Errors}
