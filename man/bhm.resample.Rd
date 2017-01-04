\name{bhm.resample}
\alias{bhm.resample}
\title{
  Resampling Transformation for the Markov Chain Monte Carlo Estimation Simulation of the Bayesian Hierarchical Model for Identifying the Most Harmful Medication Errors
}
\description{
  This function implements the transformation needed to apply the importance link function resampling methodology based on the Markov Chain Monte Carlo simulations obtained with the \code{\link{bhm.mcmc}} command (see the References).
}
\usage{
bhm.resample(model, dat, p.resample = 0.1, k, eta)
}
\arguments{
  \item{model}{an object of \link{class} "\link{mederrFit}".}
  \item{dat}{an object of \link{class} "\link{mederrData}".}
  \item{p.resample}{proportion of simulations resampled from the \code{model} argument.}
  \item{k}{required vector of \eqn{k} values to be used in the resampling process.}
  \item{eta}{required vector of \eqn{\eta} values to be used in the resampling process.}
}
%\details{
%  
%}
\value{
  \code{bhm.resample} returns an object of the class "\link{mederrResample}".
}
\references{
  MacEachern, S. and Peruggia, M. (2000), "Importance Link Function Estimation for Markov Chain Monte Carlo Methods", Journal of Computational and Graphical Statistics, 9, 99-121.

  Myers, J. A., Venturini, S., Dominici, F. and Morlock, L. (2011), "Random Effects Models for Identifying the Most Harmful Medication Errors in a Large, Voluntary Reporting Database". Technical Report.
}
\author{
Sergio Venturini \email{sergio.venturini@unibocconi.it}, 

Jessica A. Myers \email{jmyers6@partners.org}
}
\seealso{
   \code{\link{mederrData}},
   \code{\link{mederrFit}},
   \code{\link{bhm.mcmc}}.
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
