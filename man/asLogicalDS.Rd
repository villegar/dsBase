% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/asLogicalDS.R
\name{asLogicalDS}
\alias{asLogicalDS}
\title{Coerces an R object into class numeric}
\usage{
asLogicalDS(x.name)
}
\arguments{
\item{x.name}{the name of the input object to be coerced to class
numeric. Must be specified in inverted commas. But this argument is
usually specified directly by <x.name> argument of the clientside function
\code{ds.aslogical}}
}
\value{
the object specified by the <newobj> argument (or its default name
<x.name>.logic) which is written to the serverside. For further
details see help on the clientside function \code{ds.asLogical}
}
\description{
this function is based on the native R function \code{as.numeric}
}
\details{
See help for function \code{as.logical} in native R
}
\author{
Amadou Gaye, Paul Burton for DataSHIELD Development Team
}
