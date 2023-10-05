\name{EBGM}
\alias{EBGM}
\title{
  Geometric Mean of the Relative Risk Empirical Bayes Posterior Distribution
}
\description{
  This function computes the geometric mean of the empirical Bayes posterior distribution for the observed vs. expected count relative risk.
}
\usage{
EBGM(eb.result)
}
\arguments{
  \item{eb.result}{output of the \code{\link{mixnegbinom.em}} or \code{\link{negbinom.em}} commands.}
}
\details{
  For further details see DuMouchel (1999).
}
\value{
  \code{EBGM} returns the vector of geometric means.
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
   \code{\link{mixnegbinom.em}},
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

theta0 <- c(10, 6, 100, 100, .1)
ans <- mixnegbinom.em(simdata, theta0, 50000, 0.01,
	se = FALSE, stratified = TRUE)

ni <- simdata@numi
rank(EBGM(ans)[1:ni])
summary(fit2, ans, simdata)}
}
\keyword{Empirical Bayes}
\keyword{Medication Errors}
\keyword{Optimal Bayesian Ranking}
\keyword{ranking}
