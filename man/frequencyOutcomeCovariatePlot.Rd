% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frequencyOutcomeCovariatePlot.R
\name{frequencyOutcomeCovariatePlot}
\alias{frequencyOutcomeCovariatePlot}
\title{box plot of frequency in a covariate the outcomes}
\usage{
frequencyOutcomeCovariatePlot(
  OutcomeData,
  noSyms,
  noPatientsInSym,
  covariateToStudy,
  plpData,
  placeInPlot,
  colour = "grey"
)
}
\arguments{
\item{OutcomeData}{the data you want visualised.}

\item{noSyms}{number of frequencies to be calculated}

\item{noPatientsInSym}{number of patients to calculate the frequency with.}

\item{covariateToStudy}{a covariate id}

\item{plpData}{plpData used for finding the green dots}

\item{placeInPlot}{the place in the plot you want this part t}

\item{colour}{something that ggplot accepts as a colour.}
}
\value{
returns a boxplot of the frequencie of outcome when a specific covariates is present.
}
\description{
box plot of frequency in a covariate the outcomes
}
