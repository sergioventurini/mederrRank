\name{mederrData-class}
\Rdversion{1.1}
\docType{class}
\alias{mederrData-class}
\alias{mederrData}
\alias{initialize,mederrData-method}

\title{Class "mederrData". Data Specification for Identifying the Most Harmful MEdication Errors using a Bayesian Hierarchical Model.}
\description{
	This class encapsulates the data specification for a Bayesian Hierarchical Model used to identify the most harmful medication errors as described in Myers et al. (2011).
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("mederrData", data)}, where the \code{data} argument has to be a matrix or a data frame object that contains the following (\emph{numeric}) information for each error profile/hospital combination:
\enumerate{
	\item the number of times (\eqn{y}) that profile \eqn{i} in hospital \eqn{j} was reported with harm;
	\item the total number of times (\eqn{N}) that the error profile \eqn{i} is cited on a report from hospital \eqn{j},
	\item the error profile \eqn{i} identification code,
	\item the hospital \eqn{j} identification code.
}
}
\section{Slots}{
  \describe{
    \item{\code{data}:}{Object of class \code{"data.frame"}; data in the standard \code{\link{data.frame}} form.}
    \item{\code{size}:}{Object of class \code{"numeric"}; total number of observations in the data set.}
    \item{\code{numi}:}{Object of class \code{"numeric"}; number of error profiles available in the data set.}
    \item{\code{numj}:}{Object of class \code{"numeric"}; number of hospitals available in the data set.}
  }
}
\section{Methods}{
  \describe{
    %\item{initialize}{\code{signature(.Object = "mederrData")}: ... }
    \item{plot}{\code{signature(x = "mederrData", y = "missing")}: Provides a pictorial representation for a sample of error profiles reported by some hospitals.}
    \item{summary}{\code{signature(object = "mederrData")}: Summarizes information about an \code{\link{mederrData}} object.}
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
   \code{\link{bhm.mcmc}}, 
   \code{\link{bhm.resample}},
   \code{\link{mixnegbinom.em}}.
}
\examples{
ng <- 50
i <- rep(1:ng, ng)
j <- rep(1:ng, each = ng)
N <- rpois(ng^2, 3 + .05*i - .01*j) + 1

theta_i <- rgamma(ng, 5, 5) - 4/5
delta_j <- rnorm(ng, 0, .2)
logit <- -3 + theta_i[i] + delta_j[j]
y <- rbinom(ng^2, N, exp(logit)/(1 + exp(logit)))

simdata <- new("mederrData", data = cbind(y, N, i, j))
}
\keyword{classes}
\keyword{methods}
