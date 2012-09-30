\name{FixDes}
\alias{FixDes}

\title{Construct a Single-stage Design for a time-to-event Endpoint Evaluated at a
 Pre-specifed Time
 Versus Either a Known Standard Control or a Randomized Comparative Control}

\description{
  Find the sample size, duration of accrual, and test boundary for a single-stage
  design with an event-free endpoint versus either a known standard control or a
  randomized comparative control. Testing is one-sided based on the Kaplan-Meier 
  estimator evaluated at a user-specified time point.
}

\usage{
FixDes(B.init, m.init, alpha, beta, param, x, num.arm, r=0.5)
}

\details{

Estimation is based on the Kaplan-Meier or Nelson-Aalen estimators
evaluated at a target time (e.g., 1 year).  The event-free rates at the
target
time are computed from Weibull distributions assumed for the treatment
and control distributions, as is done in function \code{\link{OptimDes}}.
The design depends only on the event-free rates at the target time (except
for small changes due to rounding with different survival functions).
The duration of accrual depends on the projected maximum accrual rates.  
}

\arguments{
  \item{B.init}{A vector of user-specified time points (B1, ..., Bb) that determine a
    set of time intervals with uniform accrual.}
  \item{m.init}{The projected
    number of patients that can be accrued within the time intervals determined by \code{B.init}.}
  \item{alpha}{Type I error.}
  \item{beta}{Type II error.}
  \item{param}{Events should be defined as poor outcomes (e.g. death, progression).  Computations 
   and reporting are based on the proportion without an event at a 
   pre-specified time, \code{x}.  For constructing an optimal design, 
   complete event-free distributions at all times must be specified for 
   the control condition (Null), and for
   the alternative "effective" treatment.  Weibull distributions are currently
   implemented.  \code{param} is a vector of length 4:  (shape null, 
   scale null, shape alternative, scale alternative).  The R parameterization of the Weibull
distribution is used.}
  \item{x}{Pre-specified time for the event-free endpoint (e.g., 1 year).}
  \item{num.arm}{Number of treatment arms. \code{num.arm}=1 for single-arm trial assuming a known
  standard control. \code{num.arm}=2 for two-arm randomized trial with a comparative control arm.}
  \item{r}{Proportion of patients randomized to the treatment arm. By default, \code{r}=0.5.}
}

\value{
  A list with components:
  \item{n0}{Fixed design sample size.}
  \item{DA}{Duration of accrual.}
  \item{SL}{Total study length (\code{time, DA+x}).}
  \item{n0E}{n0 based on exact binomial test.}
  \item{DAE}{DA based on exact binomial test.}
  \item{SLE}{SL based on exact binomial test.}
  \item{C}{Rejection cutpoint for the test statistic.}
}

\note{
  The single-stage sample size is used as the starting value for evaluating the
  optimal \code{n} for a two-stage design in \code{\link{OptimDes}}.  
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


\seealso{\code{\link{OptimDes}}, \code{\link{TestStage}}, \code{\link{SimDes}}}
\examples{
B.init <- c(1, 2, 3, 4, 5)
m.init <- c(15, 20, 25, 20, 15)
alpha <- 0.05
beta <- 0.1
param <- c(1, 1.09, 2, 1.40)
x <- 1

# H0: S0=0.40 H1: S1=0.60

FixDes(B.init, m.init, alpha, beta, param, x,num.arm=1)

m.init <- 5*c(15, 20, 25, 20, 15)
FixDes(B.init, m.init, alpha, beta, param, x,num.arm=2)

}

\keyword{design}

