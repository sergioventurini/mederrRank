\name{p.value}
\alias{p.value}
\title{
  Posterior Predictive Test statistics
}
\description{
  This function computes posterior predictive test statistics as described in Myers et al. (2011).
}
\usage{
p.value(reps)
}
\arguments{
  \item{reps}{list of replications created with the \code{\link{post.rep}} function.}
}
\details{
  For further details see Myers et al. (2011).
}
\value{
  \code{p-value} creates a list of p-values.
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
   \code{\link{bhm.resample}},
   \code{\link{post.rep}}.
}
\examples{
\dontrun{
data("simdata", package = "mederrRank")
summary(simdata)

fit <- bhm.mcmc(simdata, nsim = 1000, burnin = 500, scale.factor = 1.1)
resamp <- bhm.resample(fit, simdata, p.resample = .1,
	k = c(3, 6, 10, 30, 60, Inf), eta = c(.5, .8, 1, 1.25, 2))
fit2 <- bhm.constr.resamp(fit, resamp, k = 3, eta = .8)
reps <- post.rep(fit2, simdata)
pvalues <- p.value(reps)
}
}
\keyword{Medication Errors}
\keyword{Optimal Bayesian Ranking}
\keyword{ranking}
\keyword{ranks}
