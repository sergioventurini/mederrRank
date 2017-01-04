\name{mederrFit-class}
\Rdversion{1.1}
\docType{class}
\alias{mederrFit-class}
\alias{mederrFit}
\alias{initialize,mederrFit-method}

\title{Class "mederrFit". Simulated Monte Carlo Chains (Step 1) for the Bayesian Hierarchical Model Used to Identify the Most Harmful Medication Errors.}
\description{
	This class encapsulates the simulated Monte Carlo chains for the Bayesian Hierarchical Model as described in Myers et al. (2011) forcing a symmetric normal distribution on the \eqn{\theta_i}, \eqn{i=1,\ldots,n}.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("mederrFit", thetai, deltaj, gamma, sigma2, tau2, p.acc.i, p.acc.j, tune.theta, tune.delta, k, eta)}, but most often as the result of a call to \code{\link{bhm.mcmc}} or to \code{\link{bhm.constr.resamp}}.
}
\section{Slots}{
  \describe{
    \item{\code{thetai}:}{Object of class \code{"matrix"}; simulated chains for the \eqn{\theta_i}, \eqn{i = 1,\ldots,n}, error profiles random effects; see \code{\link{bhm.mcmc}}.}
    \item{\code{deltaj}:}{Object of class \code{"matrix"}; simulated chains for the \eqn{\delta_j}, \eqn{i = j,\ldots,J}, hospitals random effects; see \code{\link{bhm.mcmc}}.}
    \item{\code{gamma}:}{Object of class \code{"numeric"}; simulated chain for the \eqn{\gamma} parameter; see \code{\link{bhm.mcmc}}.}
    \item{\code{sigma2}:}{Object of class \code{"numeric"}; simulated chain for the \eqn{\sigma^2} parameter; see \code{\link{bhm.mcmc}}.}
    \item{\code{tau2}:}{Object of class \code{"numeric"}; simulated chain for the \eqn{\tau^2} parameter; see \code{\link{bhm.mcmc}}.}
    \item{\code{p.acc.i}:}{Object of class \code{"numeric"}; acceptance rates for the error profiles random effects.}
    \item{\code{p.acc.j}:}{Object of class \code{"numeric"}; acceptance rates for the hospitals random effects.}
    \item{\code{tune.theta}:}{Object of class \code{"numeric"}; last updated values of the \eqn{\theta_i} working variances for the Metropolis step.}
    \item{\code{tune.delta}:}{Object of class \code{"numeric"}; last updated values of the \eqn{\delta_j} working variances for the Metropolis step.}
    \item{\code{k}:}{Object of class \code{"numeric"}; \eqn{k} value used in the simulation.}
    \item{\code{eta}:}{Object of class \code{"numeric"}; \eqn{\eta} value used in the simulation.}
  }
}
\section{Methods}{
  \describe{
    %\item{initialize}{\code{signature(.Object = "mederrFit")}: ... }
    \item{plot}{\code{signature(x = "mederrFit", y = "mederrFit")}: Provides a graphical representation of the estimates.}
    \item{summary}{\code{signature(object = "mederrFit")}: Summarizes the information regarding the estimates.}
	 }
}
\references{
  Myers, J. A., Venturini, S., Dominici, F. and Morlock, L. (2011), "Random Effects Models for Identifying the Most Harmful Medication Errors in a Large, Voluntary Reporting Database". Technical Report.
}
\author{
Sergio Venturini \email{sergio.venturini@unibocconi.it}, 

Jessica A. Myers \email{jmyers6@partners.org}
}
\seealso{
   \code{\link{bayes.rank}},
   \code{\link{bhm.constr.resamp}},
   \code{\link{bhm.mcmc}}.
}
%\examples{
%showClass("mederrFit")
%}
\keyword{classes}
\keyword{methods}
