\name{mederrRank-package}
\alias{mederrRank-package}
\alias{mederrRank}
\docType{package}
\title{Bayesian Methods for Identifying the Most Harmful Medication Errors}
\description{
	This package implements two distinct but related statistical approaches to the problem of identifying the combinations of medication error characteristics that are more likely to result in harm: 1) Bayesian hierarchical models with optimal Bayesian ranking on the log odds of harm, and 2) an empirical Bayes model that estimates the ratio of the observed count of harm to the count that would be expected if error characteristics and harm were independent. In addition, for the Bayesian hierarchical model, the package provides functions to assess the sensitivity of results to different specifications of the random effects distributions.
}
\details{
\tabular{ll}{
Package: \tab mederrRank\cr
Type: \tab Package\cr
Version: \tab 0.0.6\cr
Date: \tab 2011-05-03\cr
License: \tab GPL 2 or greater\cr
LazyLoad: \tab yes\cr
}
  The package is loaded with the usual \code{library(mederrRank)} command. The most important functions are \code{\link{bhm.mcmc}}, \code{\link{bhm.resample}} and \code{\link{mixnegbinom.em}}.
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
\keyword{Bayesian Hierarchical Models}
\keyword{EM}
\keyword{Empirical Bayes}
\keyword{Mixture Distributions}
\keyword{Optimal Bayes ranking}
