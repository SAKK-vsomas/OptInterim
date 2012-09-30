\name{np.OptimDes}
\alias{np.OptimDes}

\title{Optimal Two-Stage or Three-Stage Designs with User-specified Combined Sample Size or Study Length}

\description{

Construct a two-stage or three-stage design with a time-to-event endpoint evaluated at a pre-specified time 
(e.g., 6-month progression-free survival) 
comparing treatment versus either a historical control 
rate with possible stopping for futility (single-arm), or an active control arm with possible 
stopping for both futility and superiority (two-arm), after the end of Stage 1 utilizing 
time to event data.  The design  minimizes either the expected
duration of accrual (EDA), the expected sample size (ES), or the expected total study length
(ETSL).  The maximum combined sample size for both stages is
pre-specifed by the user.
}

\usage{

np.OptimDes(
            B.init, m.init, alpha, beta, param, x, n = NULL, pn = NULL,
           pt = NULL, target = c("EDA", "ETSL","ES"), sf=c("futility","OF","Pocock"),
           num.arm,r=0.5,num.stage=2,pause=0, 
           control = OptimDesControl(), ...)
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
   \item{n}{User-specified combined sample size for both stages. }
  \item{pn}{Combined sample size for both stages specified by the
ratio of the targetted two-stage sample size to the correponding
sample size for a single-stage design.}
  \item{pt}{Combined sample size for both stages specified by the
ratio of the targetted two-stage study length to the correponding
study length for a single-stage design.}
  \item{target}{The expected duration of
    accrual (EDA) is minimized with \code{target="EDA"}, the
    expected total study length is minimized with 
    \code{target="ETSL"}, and the expected sample size with \code{target="ES"}.}
  \item{sf}{Spending function for \code{alpha} at the end of Stage 1. There are three
    types of spending functions: no efficacy stopping with \code{sf="futility"}, 
    O'Brien-Fleming boundaries with \code{sf="OF"}, and Pocock boundaries with 
    \code{sf="Pocock"}.}  
  \item{num.arm}{Number of arms: a single-arm design with \code{num.arm=1}, or a 
    randomized two-arm design with \code{num.arm=2}.}
  \item{r}{Proportion of patients randomized to the treatment arm when \code{num.arm=2}.
    By default, r=0.5.}
  \item{num.stage}{Number of stages: a two-stage design with \code{num.stage=2}, or a
    three-stage design with \code{num.stage=3}.}
  \item{pause}{The pause in accrual following the scheduled times for interim
  analyses.  Data collected during the pause on the previously accrued
  patients are included in the interim analysis conducted at the end of the
  pause.  Accrual resumes after the pause without interuption as if no pause had 
  occurred.  Default is \code{pause=0}.}
  \item{control}{An optional list of control settings.  See
\code{\link{OptimDesControl}}
for the parameters that can be set and their default values.}
  \item{\dots}{No additional optional parameters are currently implemented}
}

\details{
  Plots (\code{\link{plot.OptimDes}}) based on the ouput of
\code{\link{OptimDes}} can be used to find compromise designs based on
different combined sample sizes with
near optimal values for both ETSL ES, and EDA.  \code{np.OptimDes} can be
used to compute ETSL, ES, EDA, and the other design parameters for any
specified total sample size.

The targeted combined sample size must be specified by one of
three equivalent approaches: \code{n}, \code{pn}, and \code{pt}.
The design calculations assume Weibull distributions for the event-free
endpoint in the treatment group, and for the (assumed known, "Null") control
distribution.  

The function \code{weibPmatch} can be used to select 
Weibull parameters that yield a target event-free rate at a 
specified time.
}

\value{
  A list of class \code{OptimDes} with the same output as function \code{OptimDes}.
}

\author{Bo Huang \email{<bo.huang@pfizer.com>} and Neal Thomas \email{<neal.thomas@pfizer.com>}}

\references{

  Huang B., Talukder E. and Thomas N. (2010). Optimal two-stage Phase II designs with long-term
  endpoints. \emph{Statistics in Biopharmaceutical Research}, \bold{2}, 51--61. 
  
  Case M. D. and Morgan T. M. (2003) Design of Phase II cancer trials
  evaluating survival probabilities. \emph{BMC Medical Research
  Methodology}, \bold{3}, 7.

  Lin D. Y., Shen L., Ying Z. and Breslow N. E. (1996) Group seqential
  designs for monitoring survival probabilities. \emph{Biometrics},
  \bold{52}, 1033--1042.

  Simon R. (1989) Optimal two-stage designs for phase II clinical
  trials. \emph{Controlled Clinical Trials}, \bold{10}, 1--10.
  
}


\seealso{\code{\link{OptimDes}}, \code{\link{plot.OptimDes}},
         \code{\link{weibPmatch}}}

\examples{
\dontrun{
B.init <- c(1, 2, 3, 4, 5)
m.init <- c(15, 20, 25, 20, 15)
alpha <- 0.05
beta <- 0.1
param <- c(1, 1.09, 2, 1.40)
x <- 1

# H0: S0=0.40 H1: S1=0.60

object14 <- np.OptimDes(B.init,m.init,alpha,beta,param,x,pt=1.1,target="ETSL",sf="futility",num.arm=1,num.stage=2)
}
}
\keyword{design}
\keyword{optimize}
