% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fitModelWithCensoring.R
\name{fitModelWithCensoring}
\alias{fitModelWithCensoring}
\title{predict censoring times}
\usage{
fitModelWithCensoring(Trainingset, modelSettings)
}
\arguments{
\item{Trainingset}{the dataset used for traing the model.}

\item{modelSettings}{the modelSettings}
}
\value{
returns a list with two models. one for the outcomes and one for the censoring times
}
\description{
predict censoring times
}
