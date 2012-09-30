\name{print.OptimDes}
\alias{print.OptimDes}

\title{Print Objects Output By OptimDes}
\description{
  Print an object output by \code{\link{OptimDes}}.
}
\usage{
\method{print}{OptimDes}(x, dig = 3, all=FALSE, condPow=F,
                     CMadj=F, \dots)
}

\arguments{
  \item{x}{Object output by \code{OptimDes}.}
  \item{dig}{Number of digits printed.}
  \item{all}{If \code{TRUE}, results
    are printed for all total sample sizes evaluated by 
\code{OptimDes}.}
  \item{condPow}{The conditional probability of rejecting the null hypothesis computed assuming the alternative distributions
  and an interim Z statistic equal to the interim test boundary \code{C1} is reported when \code{condPow=T}.}
  \item{CMadj}{If true, the sample sizes and times are adjusted by
the ratio of the exact binomial to asymptotic normal sample size for
the single stage design, as in Case and Morgan (2003).  Proportional
adjustments of times and sample sizes are made even if the accrual rates
are not constant. Default is false.
}
  \item{\dots}{Optional print arguments, see \code{print.default}.}
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


\seealso{\code{\link{plot.OptimDes}}, \code{\link{OptimDes}}}

\keyword{print}

