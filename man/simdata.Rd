\name{simdata}
\alias{simdata}
\docType{data}
\title{
  Simulated Data
}
\description{
  Simulated data to use for illustrative purposes in the \code{\link{mederrRank}} package.
}
\usage{data(simdata)}
\format{
  An object of class \code{\link{mederrData}}.
}
%\details{
%  
%}
\references{
  Myers, J. A., Venturini, S., Dominici, F. and Morlock, L. (2011), "Random Effects Models for Identifying the Most Harmful Medication Errors in a Large, Voluntary Reporting Database". Technical Report.
}
\author{
Sergio Venturini \email{sergio.venturini@unicatt.it}, 

Jessica A. Myers \email{jmyers6@partners.org}
}
\seealso{
   \code{\link{bhm.mcmc}},
   \code{\link{mederrData}},
   \code{\link{mederrFit}}.
}
\examples{
data("simdata", package = "mederrRank")
summary(simdata)
plot(simdata)
}
\keyword{Bayesian Hierarchical Model}
\keyword{Medication Errors}
\keyword{Optimal Bayesian Ranking}
\keyword{ranking}
