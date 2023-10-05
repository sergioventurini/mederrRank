\name{dst}
\alias{dst}
\title{
  The Skewed Student t Distribution
}
\description{
  Density function for the skewed t distribution with \code{k} degrees of freedom, scale parameter \code{sigma} and skewness \code{eta} .
}
\usage{
dst(x, sigma, k, eta)
}
\arguments{
  \item{x}{vector of quantiles.}
  \item{sigma}{scale parameter (\eqn{> 0}).}
  \item{k}{degrees of freedom (\eqn{> 0}, maybe non-integer). \code{df = Inf} is allowed.}
  \item{eta}{skewness parameter (\eqn{> 0}).}
}
\details{
  This distribution is based on introducing skewing into the symmetric scaled t distribution, as described in Fernandez and Steel (1998).
  The parameters characterizing the center (here set at 0) and the spread (\code{sigma}) refer to the mean and standard deviation of the underlying symmetric distribution.
  In the skewed t distribution, the centrality parameter defines the mode of the distribution, but it is no longer either the mean or the median. Similarly, in the skewed t distribution, \code{sigma} still characterizes the spread, but it can no longer be interpreted directly as the standard deviation of the distribution.
}
\value{
  \code{dst} gives the density corresponding to the \code{simga}, \code{k} and \code{eta} values provided.
}
\references{
  Fernandez, C. and Steel, M. (1998), "On Bayesian Modeling of Fat Tails and Skewness". Journal of the American Statistical Association, 93, 359-371.

  Lee, K. and Thompson, S. (2008), "Flexible Parametric Models for Random-Effects Distributions". Statistics in Medicine, 27, 418-434.

  Myers, J. A., Venturini, S., Dominici, F. and Morlock, L. (2011), "Random Effects Models for Identifying the Most Harmful Medication Errors in a Large, Voluntary Reporting Database". Technical Report.
}
\author{
Sergio Venturini \email{sergio.venturini@unicatt.it}, 

Jessica A. Myers \email{jmyers6@partners.org}
}
\seealso{
   \code{\link{dt}}.
}
%\examples{
%
%}
\keyword{t Distribution}
