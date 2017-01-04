\name{mederrResample-class}
\Rdversion{1.1}
\docType{class}
\alias{mederrResample-class}
\alias{mederrResample}
\alias{initialize,mederrResample-method}

\title{Class "mederrResample". Simulated Monte Carlo Chains (Step 2) for the Bayesian Hierarchical Model Used to Identify the Most Harmful Medication Errors.}
\description{
	This class encapsulates the information needed to resample the Monte Carlo chains for the Bayesian Hierarchical Model as described in Myers et al. (2011) using user defined values for \eqn{k} and \eqn{eta}.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("mederrResample", log.ir, samp, A, t.new, t.old, grd)}, but most often as the result of a call to \code{\link{bhm.resample}}.
}
\section{Slots}{
  \describe{
    \item{\code{log.ir}:}{Object of class \code{"array"}; logarithm of the importance ratio for each pair of \eqn{(k,\eta)} values.}
    \item{\code{samp}:}{Object of class \code{"array"}; resampled MCMC simulation indexes.}
    \item{\code{A}:}{Object of class \code{"array"}; transformation ratio for each pair of \eqn{(k,\eta)} values.}
    \item{\code{t.new}:}{Object of class \code{"array"}; \eqn{\theta_i} posterior modes using \eqn{(k = \infty, \eta = 1)}.}
    \item{\code{t.old}:}{Object of class \code{"numeric"}; \eqn{\theta_i} posterior modes using user defined \eqn{(k, \eta)} values.}
    \item{\code{grd}:}{Object of class \code{"list"}; grid of required \eqn{(k, \eta)} values.}
  }
}
\section{Methods}{
  \describe{
    %\item{initialize}{\code{signature(.Object = "mederrResample")}: ... }
    \item{plot}{\code{signature(x = "mederrResample", y = "missing")}: : Provides a graphical representation of a \code{\link{mederrResample}} object.}
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
   \code{\link{bayes.rank}}.
   \code{\link{bhm.constr.resamp}},
   \code{\link{bhm.mcmc}}. 
}
%\examples{
%showClass("mederrFit")
%}
\keyword{classes}
\keyword{methods}
