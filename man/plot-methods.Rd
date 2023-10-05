\name{plot-methods}
\docType{methods}
\alias{plot-methods}
\alias{plot,ANY,ANY-method}
\alias{plot,mederrData,missing-method}
\alias{plot,mederrFit,mederrFit-method}
\alias{plot,mederrResample,missing-method}
\title{Plot of Medication Error Data and Analysis}
\description{
   Methods for function \code{plot} in Package `graphics' to be used with "\link{mederrData}", \link{mederrFit} and "\link{mederrResample}" objects.
}
\section{Methods}{
\describe{

\item{\code{signature(x = "mederrData", y = "missing")}}{
  Pictorial representation for a "\link{mederrData}" object.
}

\item{\code{signature(x = "mederrFit", y = "mederrFit")}}{
  Graphical representation of Markov Chain Monte Carlo simulations for a "\link{mederrFit}" object.
}

\item{\code{signature(x = "mederrResample", y = "missing")}}{
  Graphical representation of the resampling transformation for a "\link{mederrResample}" object.
}
}}
\references{
  Myers, J. A., Venturini, S., Dominici, F. and Morlock, L. (2011), "Random Effects Models for Identifying the Most Harmful Medication Errors in a Large, Voluntary Reporting Database". Technical Report.
}
\author{
Sergio Venturini \email{sergio.venturini@unicatt.it}, 

Jessica A. Myers \email{jmyers6@partners.org}
}
\seealso{
   \code{\link{bhm.mcmc}}, 
   \code{\link{bhm.resample}}.
}
\keyword{Medication Errors}
\keyword{methods}
