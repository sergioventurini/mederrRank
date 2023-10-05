\name{bhm.mcmc}
\alias{bhm.mcmc}
\title{
  Markov Chain Monte Carlo Estimation (Step 1) of the Bayesian Hierarchical Model for Identifying the Most Harmful Medication Errors 
}
\description{
  This function implements the Markov Chain Monte Carlo estimation methodology for the Bayesian hierarchical model described in Myers et al. (2011).
}
\usage{
bhm.mcmc(dat, nsim = 2000, burnin = 500, scale.factor = 1,
	adaptive.int = 100, adaptive.max = 1000, prior = NULL,
	init = NULL, tuneD = NULL, tuneT = NULL)
}
\arguments{
  \item{dat}{an object of \link{class} "\link{mederrData}".}
  \item{nsim}{number of iterations.}
  \item{burnin}{number of burn-in iterations.}
  \item{scale.factor}{scale factor of the random effects proposal distribution.}
  \item{adaptive.int}{iteration interval at which the standard error of the random effects proposal distribution is updated.}
  \item{adaptive.max}{last iteration at which the standard error of the random effects proposal distribution is updated.}
  \item{prior}{an optional list of the hyperparameters values; see the Details section below.}
  \item{init}{an optional list of initial values for the model parameters; see the Details section below.}
  \item{tuneD}{an optional vector of the \eqn{\delta_j} proposal distribution variances.}
  \item{tuneT}{an optional vector of the \eqn{\theta_i} proposal distribution variances.}
}
\details{
  The Bayesian hierarchical model (with crossed random effects) implemented here for identifying the medication error profiles with the largest log odds of harm is
  \deqn{y_{ij} | N_{ij}, p_{ij} \sim Bin(N_{ij},p_{ij})}
  \deqn{logit(p_{ij}) = \gamma + \theta_i + \delta_j}
  \deqn{\theta_i | \sigma, \eta, k \sim St(0,\sigma,k,\eta), \qquad i=1,\ldots,n}
  \deqn{\delta_j | \tau^2 \sim N(0,\tau^2), \qquad j=1,\ldots,J}
  \deqn{\gamma \sim N(g,G)}
  \deqn{\sigma^2 \sim IG(a_1,b_1)}
  \deqn{\tau^2 \sim IG(a_2,b_2)}
  \deqn{k \sim Unif(0,\infty)}
  \deqn{\eta \sim Unif(0,\infty),}
  where \eqn{N_{ij}} denotes the number of times that the error profile \eqn{i} is cited on a report from hospital {j} and \eqn{y_{ij}} is the corresponding number of times that profile \eqn{i} in hospital \eqn{j} was reported with harm.
  This function implements the first model estimation step in which the values \eqn{k = \infty} and \eqn{k = 1}, i.e. a symmetric normal distribution, is forced for the error profiles' random effects. A sample from the joint posterior distribution of all other parameters via Markov Chain Monte Carlo with adaptive Metropolis steps for each set of random effects is obtained. For more details see Myers et al. (2011).
}
\value{
  \code{bhm.mcmc} returns an object of the class "\link{mederrFit}".
}
\references{
  Myers, J. A., Venturini, S., Dominici, F. and Morlock, L. (2011), "Random Effects Models for Identifying the Most Harmful Medication Errors in a Large, Voluntary Reporting Database". Technical Report.
}
\author{
Sergio Venturini \email{sergio.venturini@unicatt.it}, 

Jessica A. Myers \email{jmyers6@partners.org}
}
\seealso{
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

summary(fit2, ans, simdata)}
}
\keyword{Bayesian Hierarchical Model}
\keyword{Markov Chain Monte Carlo}
\keyword{Medication Errors}
\keyword{Optimal Bayesian Ranking}
\keyword{ranking}
