\name{summary-methods}
\docType{methods}
\alias{summary-methods}
\alias{summary,ANY-method}
\alias{summary,mederrData-method}
\alias{summary,mederrFit-method}
\title{Summary of Medication Error Data and Analysis}
\description{
  Methods for function \code{summary} in Package `base' to be used with "\link{mederrData}" and "\link{mederrFit}" objects.
}
\section{Methods}{
\describe{

\item{\code{signature(object = "mederrData")}}{
  Extracts summary information about the slots of a "\link{mederrData}" object.
}

\item{\code{signature(object = "mederrFit")}}{
  Extracts summary information about the slots of a "\link{mederrFit}" object.
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
   \code{\link{bayes.rank}},
   \code{\link{bhm.mcmc}}.
}
\keyword{Medication Errors}
\keyword{methods}
