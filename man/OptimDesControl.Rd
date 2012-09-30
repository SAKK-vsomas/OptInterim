\name{OptimDesControl}
\alias{OptimDesControl}

\title{Set parameters controlling numerical methods for OptimDes and np.OptimDes}
\description{
  Set parameters controlling numerical methods for \code{\link{OptimDes}} and \code{\link{np.OptimDes}}}

\usage{
OptimDesControl(trace=TRUE,tol=0.01,n.int=c(1,5),aboveMin=c(1.05,1.10))
}

\arguments{
  \item{trace}{A logical value indicating if a
    trace of the iteration
    progress should be printed.  Default is \code{FALSE}.  If
    \code{TRUE} the sample size \code{n}, the corresponding optimal
    correlation \code{rho} and minimized \code{EDA}(\code{ETSL}) are
    printed at the conclusion of each iteration.}
  \item{tol}{\code{tol} is the
    desired accuracy for \code{optimize}. Default is 0.01.}
  \item{n.int}{A two-element vector containing the grid search interval for maximum sample size of 
    one-arm and two-arm designs. Default is c(1, 5).}
  \item{aboveMin}{The minimization method searches by increasing order
   from the single-stage
   sample size until the criteria exceeds the current minimum by a 
   multiplicative factor of \code{aboveMin}.  The search will also 
   terminate if \code{sum(m.init)} is reached. Default is 1.05 for one-arm, 1.10 for two-arm designs.}
}

\author{Bo Huang \email{<bo.huang@pfizer.com>} and Neal Thomas \email{<neal.thomas@pfizer.com>}}

\references{

  Huang B., Talukder E. and Thomas N. Optimal two-stage Phase II designs with long-term
  endpoints. \emph{Statistics in Biopharmaceutical Research}, \bold{2(1)}, 51--61. 
  
  Case M. D. and Morgan T. M. (2003) Design of Phase II cancer trials
  evaluating survival probabilities. \emph{BMC Medical Research
  Methodology}, \bold{3}, 7.

  Lin D. Y., Shen L., Ying Z. and Breslow N. E. (1996) Group seqential
  designs for monitoring survival probabilities. \emph{Biometrics},
  \bold{52}, 1033--1042.

  Simon R. (1989) Optimal two-stage designs for phase II clinical
  trials. \emph{Controlled Clinical Trials}, \bold{10}, 1--10.
  
}


\seealso{\code{\link{OptimDes}}, \code{\link{np.OptimDes}}}

\keyword{design}
\keyword{optimize}
