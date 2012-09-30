\name{weibPmatch}
\alias{weibPmatch}

\title{ Compute the shape or scale parameter for a Weibull
distribution so it has a specified event-free rate at a specified time.}
\description{
  Determine the shape or scale parameter of a Weibull distribution so
it has event-free rate P0 at time x.  If the shape is specified, the scale
parameter is computed, and if the scale is specified, the shape
parameter is computed.
}
\usage{
weibPmatch(x, p0, shape, scale)
}

\arguments{
  \item{x}{ Pre-specified time for the event-free endpoint (e.g., 1 year). }
  \item{p0}{ Event-free rate at time x. }
  \item{shape}{ If specified, the necessary scale parameter is computed }
  \item{scale}{ If specified, the necessary shape parameter is computed  }
}
\details{
   The time and event-free rate must be supplied.  Either the shape or
scale parameter must also be specified, but not both.  The R
parameterization of the Weibull distribution is used.
}
\value{
  A single numerical value is returned, either the shape or scale
parameter, depending on which is specified by the user.
}

\author{Bo Huang \email{<bo.huang@pfizer.com>} and Neal Thomas \email{<neal.thomas@pfizer.com>}}


\references{
  Johnson, N. L., Kotz, S. and Balakrishnan, N. (1995) Continuous
  Univariate Distributions, volume 1, chapter 21. Wiley, New York.  
}

\seealso{\code{\link{weibull.plot}},\code{\link{pweibull}}, \code{\link{OptimDes}}}

\examples{


param <- c(1, 1.09, 2, 1.40)
x<-1

p0<-pweibull(x,param[1],param[2],lower=FALSE)
p1<-pweibull(x,param[3],param[4],lower=FALSE)

weibull.plot(param,x)

### equivalent to simple call
paramNew<-c(param[1], weibPmatch(x,p0,param[1]), param[3], weibPmatch(x,p1,param[3]))
weibull.plot(paramNew, x)

### null curve with different shape
paramNew<-c(3.0, weibPmatch(x,p0,3.0), param[3], weibPmatch(x,p1,param[3]))
weibull.plot(paramNew, x)

### alternative curve with different scale
paramNew<-c(param[1], param[2], weibPmatch(x,p1,scale=2), 2)
weibull.plot(paramNew, x)

}
\keyword{hplot}
