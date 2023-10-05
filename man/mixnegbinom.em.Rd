\name{mixnegbinom.em}
\alias{mixnegbinom.em}
\title{
  Expectation-Maximization Algorithm for the Mixture of Negative Binomial Distributions
}
\description{
  This function provides the empirical Bayes estimates for the parameters \code{theta} of a mixture of two negative binomial distributions (see \code{\link{dmixnegbinom}}) using an Expectation-Maximization algorithm.
}
\usage{
mixnegbinom.em(dat, theta0, maxiter = 50000, toler = 0.01,
	se = TRUE, stratified = FALSE)
}
\arguments{
  \item{dat}{an object of \link{class} "\link{mederrData}".}
  \item{theta0}{initial values for the parameters to be optimized over.}
  \item{maxiter}{a positive integer specifying the maximum number of iterations to be performed before the program is terminated.}
  \item{toler}{a positive scalar giving the tolerance at which the change in the log-likelihood is considered close enough to zero to terminate the algorithm.}
  \item{se}{logical; if TRUE the standard errors of the estimates are also returned.}
  \item{stratified}{logical; if TRUE the analysis will be performed by stratifying on the hospitals.}
}
\details{
  For further details see Myers et al. (2011).
}
\value{
  \code{mixnegbinom.em} returns a list with components:
  \item{theta.hat }{The best set of parameters found.}
  \item{final.err }{The last change in the log-likelihood; it has to be smaller than the \code{toler} argument.}
  \item{final.ll }{The likelihood value corresponding to \code{theta.hat}.}
  \item{final.score }{The log-likelihood score value corresponding to \code{theta.hat}.}
  \item{num.iter }{The number of iterations performed to find the proposed solution.}
  \item{se }{Only if argument \code{se} is true. A vector of estimates standard errors for the solution found.}
  \item{N }{The vector of observed error profiles counts.}
  \item{E }{The vector of expected error profiles counts.}
  \item{prior }{A character string giving the prior used; for this function is set to "mixgamma", i.e. a mixture of two gamma distributions as in DuMouchel (1999).}
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
   \code{\link{dmixnegbinom}},
   \code{\link{EBGM}},
   \code{\link{negbinom.em}}.
}
\examples{
\dontrun{
data("simdata", package = "mederrRank")
summary(simdata)

fit <- bhm.mcmc(simdata, nsim = 1000, burnin = 500, scale.factor = 1.1)
resamp <- bhm.resample(fit, simdata, p.resample = .1,
	k = c(3, 6, 10, 30, 60, Inf), eta = c(.5, .8, 1, 1.25, 2))
fit2 <- bhm.constr.resamp(fit, resamp, k = 3, eta = .8)
plot(fit, fit2, simdata)

theta0 <- c(10, 6, 100, 100, .1)
ans <- mixnegbinom.em(simdata, theta0, 50000, 0.01,
	se = TRUE, stratified = TRUE)
ans$theta
ans$se

summary(fit2, ans, simdata)}
}
\keyword{EM}
\keyword{Empirical Bayes}
\keyword{Medication Errors}
\keyword{Optimal Bayesian Ranking}
\keyword{ranking}
