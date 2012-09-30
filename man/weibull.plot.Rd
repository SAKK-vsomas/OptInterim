\name{weibull.plot}
\alias{weibull.plot}

\title{Plot Weibull Survival Curves}

\description{
  Plot Weibull survival curves with differences at a target time highlighted. Designed for use with the \code{param}
values input to function \code{\link{OptimDes}}.
}

\usage{
weibull.plot(param, x, l.type = 1:3, l.col = c("blue", "red"), ...)
}

\arguments{
  \item{param}{Events should be defined as poor outcomes.  Computations and 
   reporting are based on the proportion without an event at a 
   pre-specified time, \code{x}.  For constructing an optimal design, 
   complete event-free distributions at all times must be specified for 
   the control condition (Null), and for
   the alternative "effective" treatment.  Weibull distributions are currently
   implemented.  \code{param} is a vector of length 4:  (shape null, 
   scale null, shape alternative, scale alternative).  The R parameterization of the Weibull
distribution is used.}
  \item{x}{Pre-specified time for the event-free endpoint (e.g., 1 year).}
  \item{l.type}{Line types for the plot. Default is \code{1-3}.}
  \item{l.col}{Line colors for the plot. Default is \code{"blue"} for
    the null survival curve, \code{"red"} for the alternative survival curve.}
  \item{\dots}{Further graphical arguments, see \code{plot.default}.}
}

\author{Bo Huang \email{<bo.huang@pfizer.com>} and Neal Thomas \email{<neal.thomas@pfizer.com>}}


\references{
  Johnson, N. L., Kotz, S. and Balakrishnan, N. (1995) Continuous
  Univariate Distributions, volume 1, chapter 21. Wiley, New York.  
}

\seealso{\code{\link{dweibull}}, \code{\link{OptimDes}},
\code{\link{weibPmatch}} }

\examples{
param <- c(1, 1.09, 2, 1.40)
x <- 1

weibull.plot(param,x)

}
\keyword{hplot}


