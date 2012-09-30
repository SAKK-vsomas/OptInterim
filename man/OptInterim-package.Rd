\name{OptInterim-package}
\alias{OptimInterim-package}
\docType{package}
\title{
Optimal Two and Three Stage Designs with Time-to-event
Endpoints Evaluated at a Pre-specified Time.
}
\description{
\code{OptimDes} is the primary function in the package
\code{OptInterim}.  Detailed documentation of the design and a package 
vignette with examples can be found under "directory" on the package HTML
help page.  The user supplies the projected accrual distribution and
distributions for time to event under the null and alternative
hypotheses.  \code{OptimDes} returns the total sample size, the
interim time and sample size, and boundaries for decision rules.

\code{plot.OptimDes} can be applied to the output of \code{OptimDes}
to evaluate other two-stage or three-stage designs that may achieve near optimal
results for both of the implemented optimality criteria.
\code{print.OptimDes} produces a summary of the design with a comparison to a
standard single-stage design (which can also be obtained from
\code{FixDes})  Design parameters for nearly optimal designs can be
evaluated with \code{np.OptimDes}.  Statistical tests for a two-stage or three-stage
design are implemented in \code{TestStage}.

The function \code{SimDes} produces simulations under the assumed
design by default to check the accuracy of asymptotic approximations.
By supplying alterative accrual and survival distributions, the
performance of the design and estimation can be checked for robustness.

The function \code{weibPmatch} can be used to find parameters of a
Weibull distribution that match a event-free rate at a specified
time.  Function \code{weibull.plot} displays a null-alternative pair
of hypothesized Weibull survival functions.
}
\details{
\tabular{ll}{
Package: \tab OptInterim\cr
Type: \tab Package\cr
Version: \tab 3.0\cr
Date: \tab 2012-12-03\cr
License: \tab GPL version 2 or later\cr
}

}
\author{Bo Huang \email{<bo.huang@pfizer.com>} and Neal Thomas \email{<neal.thomas@pfizer.com>}}


\keyword{ package }

\seealso{
\code{Package Survival} 
}

