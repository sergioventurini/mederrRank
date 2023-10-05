\name{bayes.rank}
\alias{bayes.rank}
\title{Optimal Bayesian Ranking}
\description{
  This function estimates the ranks of the log odds of harm of the various medication error profiles as described in Myers et al. (2011).
}
\usage{
  bayes.rank(model)
}
\arguments{
  \item{model}{a \link{mederrFit} object.}
}
\details{
  Using the posterior samples of the \eqn{\theta_i}, the function estimates the ranks of the log odds of harm of the various error profiles. Optimal Bayesian ranking gives estimates of rank for profile \eqn{i} as
  \deqn{\hat{R}_i = \sum_{k=1}^{n}{\hat{P}(\theta_k \leq \theta_i | \boldsymbol{y}, \boldsymbol{N})},}
  where \eqn{\hat{P}(\theta_k \leq \theta_i | \boldsymbol{y}, \boldsymbol{N})}  is the posterior probability that \eqn{\theta_k \leq \theta_i}.
}
\value{
  \code{bayes.rank} returns the numerical vector of Optimal Bayesian ranks for the chosen \link{mederrFit} model (see the references for the details).
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
   \code{\link{bhm.mcmc}}.
}
\examples{
\dontrun{
data("simdata", package = "mederrRank")
summary(simdata)

fit <- bhm.mcmc(simdata, nsim = 1000, burnin = 500, scale.factor = 1.1)
ranks <- bayes.rank(fit)

summary(ranks)
}
}
\keyword{Medication Errors}
\keyword{Optimal Bayesian Ranking}
\keyword{ranking}
\keyword{ranks}
