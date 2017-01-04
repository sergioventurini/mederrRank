\name{rmixnegbinom}
\alias{rmixnegbinom}
\title{
  The Negative Binomial Mixture Distribution
}
\description{
  Random generation for a mixture of two negative binomial distributions.
}
\usage{
rmixnegbinom(n, theta, E)
}
\arguments{
  \item{n}{number of observations.}
  \item{theta}{vector of parameters for the negative binomial distribution mixture.}
  \item{E}{vector of (non-negative integer) expected counts.}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
  \code{rmixnegbinom} generates random deviates corresponding to the \code{E} and \code{theta} values provided.
}
\references{
  Myers, J. A., Venturini, S., Dominici, F. and Morlock, L. (2011), "Random Effects Models for Identifying the Most Harmful Medication Errors in a Large, Voluntary Reporting Database". Technical Report.
}
\author{
Sergio Venturini \email{sergio.venturini@unibocconi.it}, 

Jessica A. Myers \email{jmyers6@partners.org}
}
\seealso{
   \code{\link{dmixnegbinom}},
   \code{\link{rnbinom}}.
}
%\examples{
%data("simdata", package = "mederrRank")
%ni <- simdata@numi
%theta0 <- c(10, 6, 100, 100, .1)
%ans <- mixnegbinom.em(simdata, theta0, 50000, 0.01, se = FALSE, stratified = TRUE)
%theta <- ans$theta.hat
%N.E <- cbind(rmixnegbinom(ni, theta, E), ans$E[1:ni])
%N.ix <- match(unique(N.E[, 1]), N.E[, 1])
%N <- N.E[N.ix, 1]
%E <- N.E[N.ix, 2]
%dens <- dmixnegbinom(N, theta, E)
%hist(N, breaks = 10, freq = FALSE)
%points(N, dens)
%}
\keyword{Counts}
\keyword{DuMocuhel}
\keyword{Medication Errors}
\keyword{Mixture}
\keyword{Negative Binomial Distribution}
