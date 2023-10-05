\name{dmixnegbinom}
\alias{dmixnegbinom}
\title{
  The Negative Binomial Mixture Distribution
}
\description{
  Density function for a mixture of two negative binomial distributions.
}
\usage{
dmixnegbinom(x, theta, E, log.p = FALSE)
}
\arguments{
  \item{x}{vector of (non-negative integer) quantiles.}
  \item{theta}{vector of parameters for the negative binomial distribution mixture.}
  \item{E}{vector of (non-negative integer) expected counts.}
  \item{log.p}{logical; if TRUE, probabilities p are given as log(p).}
}
\details{
  The mixture of two negative binomial distributions has density
  \deqn{P(N = x) = theta[5] f(x;theta[1],theta[2],E) + (1 - theta[5]) f(x;theta[3],theta[4],E),}
  where
  \deqn{f(x;\alpha,\beta,E) = \frac{\Gamma(\alpha + x)}{\Gamma(\alpha) x!}\frac{1}{(1 + \beta/E)^x}\frac{1}{(1 + E/\beta)^\alpha}}
  for \eqn{x = 0,1,\ldots,\alpha}, \eqn{\alpha, \beta, E > 0} and \eqn{0 < theta[5] \leq 1}.
  The mixture of two negative binomial distributions represents the marginal distribution of the counts \eqn{N} coming from Poisson data with parameter \eqn{\lambda} and a mixture of two gamma distributions as its prior. For details see the paper by Dumouchel (1999).
}
\value{
  \code{dmixnegbinom} gives the density corresponding to the \code{E} and \code{theta} values provided.
}
\references{
  DuMouchel W. (1999), "Bayesian Data Mining in Large Frequency Tables, with an Application to the FDA Spontaneous Reporting System". The American Statistician, 53, 177-190.

  Myers, J. A., Venturini, S., Dominici, F. and Morlock, L. (2011), "Random Effects Models for Identifying the Most Harmful Medication Errors in a Large, Voluntary Reporting Database". Technical Report.
}
\author{
Sergio Venturini \email{sergio.venturini@unicatt.it}, 

Jessica A. Myers \email{jmyers6@partners.org}
}
\seealso{
   \code{\link{dnbinom}},
   \code{\link{rmixnegbinom}}.
}
\examples{
\dontrun{
data("simdata", package = "mederrRank")
ni <- simdata@numi
theta0 <- c(10, 6, 100, 100, .1)
ans <- mixnegbinom.em(simdata, theta0, 50000, 0.01,
	se = FALSE, stratified = TRUE)
theta <- ans$theta.hat
N.E <- cbind(ans$N[1:ni], ans$E[1:ni])[sort(ans$N[1:ni], index.return = TRUE)$ix, ]
N.ix <- match(unique(N.E[, 1]), N.E[, 1])
N <- N.E[N.ix, 1]
E <- N.E[N.ix, 2]
dens <- dmixnegbinom(N, theta, E)
hist(N.E[, 1], breaks = 40, freq = FALSE)
points(N, dens)
}
}
\keyword{Counts}
\keyword{DuMocuhel}
\keyword{Medication Errors}
\keyword{Mixture}
\keyword{Negative Binomial Distribution}
