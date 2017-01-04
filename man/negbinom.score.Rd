\name{negbinom.score}
\alias{negbinom.score}
\title{
  Log-Likelihood Score Function for the Negative Binomial Distribution
}
\description{
  This function computes the log-likelihood score for the negative binomial distribution as described in \code{\link{dmixnegbinom}}. 
}
\usage{
negbinom.score(theta, N, E)
}
\arguments{
  \item{theta}{vector of parameter values.}
  \item{N}{vector of observed error profiles counts.}
  \item{E}{vector of expected error profiles counts.}
}
\details{
  For further details see Myers et al. (2011).
}
\value{
  \code{negbinom.score} returns the vector of log-likelihood score values for the negative binomial distribution.
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
   \code{\link{dnegbinom}},
   \code{\link{negbinom.em}},
   \code{\link{negbinom.loglik}}.
}
%\examples{
%
%}
\keyword{EM}
\keyword{Empirical Bayes}
\keyword{Medication Errors}
\keyword{Mixture}
\keyword{Optimal Bayesian Ranking}
\keyword{ranking}
