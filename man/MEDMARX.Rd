\name{MEDMARX}
\alias{MEDMARX}
\docType{data}
\title{
  Subset of the MEDMARX Data
}
\description{
  Subset of the MEDMARX data included for illustrative purposes only in the \code{\link{mederrRank}} package.
}
\usage{data(MEDMARX)}
\format{
  An object of class \code{\link{mederrData}}.
}
\details{
  The data contained in this object are reproduced by gentle permission of Quantros, Inc., 690 N. McCarthy Blvd., Suite 200, Milpitas, CA 95035 (\url{https://www.medmarx.com/}).
}
\references{
  Myers, J. A., Venturini, S., Dominici, F. and Morlock, L. (2011), "Random Effects Models for Identifying the Most Harmful Medication Errors in a Large, Voluntary Reporting Database". Technical Report.
}
\author{
Sergio Venturini \email{sergio.venturini@unibocconi.it}, 

Jessica A. Myers \email{jmyers6@partners.org}
}
\seealso{
   \code{\link{bhm.mcmc}},
   \code{\link{mederrData}},
   \code{\link{mederrFit}}.
}
\examples{
data("MEDMARX", package = "mederrRank")
summary(MEDMARX)
plot(MEDMARX, nbins.err = 20, nbins.hosp = 10)
}
\keyword{Bayesian Hierarchical Model}
\keyword{Medication Errors}
\keyword{Optimal Bayesian Ranking}
\keyword{ranking}
