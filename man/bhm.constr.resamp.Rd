\name{bhm.constr.resamp}
\alias{bhm.constr.resamp}
\title{
  Markov Chain Monte Carlo Estimation (Step 2) of the Bayesian Hierarchical Model for Identifying the Most Harmful Medication Errors 
}
\description{
  This function represents the "constructor" function for the resampling procedure used in this package. \code{\link{bhm.resample}} calculates the importance ratios, and performs the sampling, and then this function constructs the resampled model based on that information.
}
\usage{
bhm.constr.resamp(model, resample, k, eta)
}
\arguments{
  \item{model}{an object of \link{class} "\link{mederrFit}".}
  \item{resample}{an object of \link{class} "\link{mederrResample}".}
  \item{k}{\eqn{k} (number of degrees of freedom) value to use in the resampling procedure.}
  \item{eta}{\eqn{\eta} (skewing paramter) value to use in the resampling procedure.}
}
\details{
  Deviations from the normal, i.e. \eqn{(k = \infty, \eta = 1)}, random effects distribution using a different pair of \eqn{k} and \eqn{\eta} values are considered. The methodology implemented here is the importance link function resampling approach introduce by MacEachern and Peruggia (2000): based on the \eqn{(k = \infty, \eta = 1)} chain, new posterior samples under a new set of \eqn{(k, \eta)} values is obtained.
}
\value{
  \code{bhm.constr.resamp} returns an object of the class "\link{mederrFit}".
}
\references{
  MacEachern, S. and Peruggia, M. (2000), "Importance Link Function Estimation for Markov Chain Monte Carlo Methods", Journal of Computational and Graphical Statistics, 9, 99-121.

  Myers, J. A., Venturini, S., Dominici, F. and Morlock, L. (2011), "Random Effects Models for Identifying the Most Harmful Medication Errors in a Large, Voluntary Reporting Database". Technical Report.
}
\author{
Sergio Venturini \email{sergio.venturini@unicatt.it}, 

Jessica A. Myers \email{jmyers6@partners.org}
}
\seealso{
   \code{\link{bhm.mcmc}},
   \code{\link{bhm.resample}},
   \code{\link{mederrData}},
   \code{\link{mederrFit}}.
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
ans <- mixnegbinom.em(simdata, theta0, 50000, 0.01, se = TRUE,
	stratified = TRUE)

summary(fit2, ans, simdata)
}
}
\keyword{Bayesian Hierarchical Model}
\keyword{Markov Chain Monte Carlo}
\keyword{Medication Errors}
\keyword{Optimal Bayesian Ranking}
\keyword{ranking}
