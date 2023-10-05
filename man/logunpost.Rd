\name{logunpost}
\alias{logunpost}
\title{
  Unnormalized Marginal Posterior Distributions for \eqn{k} and \eqn{\eta}
}
\description{
  This functions computes the unnormalized marginal posterior distributions for the \eqn{k} and \eqn{\eta} parameters as described in Myers et al (2011). 
}
\usage{
logunpost(resample)
}
\arguments{
  \item{resample}{an object of \link{class} "\link{mederrResample}".}
}
\details{
  \code{logunpost} is used in the plot \code{method} for a \link{mederrResample} object.
}
\value{
  \code{logunpost} returns an array with the posterior distribution values.  
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
   \code{\link{mederrResample}}.
}
%\examples{
%
%}
\keyword{Medication Errors}
\keyword{Optimal Bayesian Ranking}
\keyword{ranking}
\keyword{ranks}
