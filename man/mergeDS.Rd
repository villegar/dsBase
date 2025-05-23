% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mergeDS.R
\name{mergeDS}
\alias{mergeDS}
\title{mergeDS (assign function) called by ds.merge}
\usage{
mergeDS(
  x.name,
  y.name,
  by.x.names.transmit,
  by.y.names.transmit,
  all.x,
  all.y,
  sort,
  suffixes.transmit,
  no.dups,
  incomparables
)
}
\arguments{
\item{x.name, }{the name of the first data.frame to be merged specified in
inverted commas. Specified via argument <x.name> of \code{ds.merge} function}

\item{y.name, }{the name of the second data.frame to be merged specified in
inverted commas. Specified via argument <y.name> of \code{ds.merge} function}

\item{by.x.names.transmit}{the name of a single variable or a vector of names of
multiple variables (in transmittable form) containing the IDs or other data
on which data.frame x is to be merged/linked
to data.frame y. Specified via argument <by.x.names> of \code{ds.merge} function}

\item{by.y.names.transmit}{the name of a single variable or a vector of names of
multiple variables (in transmittable form) containing the IDs or other data
on which data.frame y is to be merged/linked
to data.frame x. Specified via argument <by.y.names> of \code{ds.merge} function}

\item{all.x}{logical, if TRUE, then extra rows will be added to the output,
one for each row in x that has no matching row in y. Specified via argument
<all.x> of \code{ds.merge} function. Default = FALSE.}

\item{all.y}{logical, if TRUE, then extra rows will be added to the output,
one for each row in y that has no matching row in x. Specified via argument
<all.y> of \code{ds.merge} function. Default = FALSE.}

\item{sort}{logical, if TRUE the merged result should be sorted on elements
in the by.x.names and by.y.names columns. Specified via
argument <sort> of \code{ds.merge} function. Default = TRUE.}

\item{suffixes.transmit}{a character vector of length 2 (in transmittable form)
specifying the suffixes to be used for making unique common column names
in the two input data.frames when they both appear in the merged data.frame.
Specified via argument <suffixes> of \code{ds.merge} function. Default '.x' and '.y'.}

\item{no.dups}{logical, when TRUE suffixes are appended in more cases to
rigorously avoid duplicated column names in the merged data.frame.
Specified via argument <no.dups> of \code{ds.merge} function. Default TRUE
but was apparently implicitly FALSE before R version 3.5.0.}

\item{incomparables, }{values intended for merging on one column
which cannot be matched. See 'match' in help
for Native R \code{merge} function. Specified via argument <incomparables> of
\code{ds.merge}}
}
\value{
the merged data.frame specified by the <newobj> argument
of ds.merge (or by default 'x.name_y.name' if the <newobj> argument
is NULL) which is written to the serverside. In addition,
two validity messages are returned to the clientside
indicating whether <newobj> has been created in each data source and if so whether
it is in a valid form. If its form is not valid in at least one study there may
be a studysideMessage that can explain the error in creating
the full output object. As well as appearing on the screen at run time,if you wish to
see the relevant studysideMessages at a later date you can use the \code{ds.message}
function. If you type ds.message(<newobj>) it will print out the relevant
studysideMessage from any datasource in which there was an error in creating <newobj>
and a studysideMessage was saved. If there was no error and <newobj> was created
without problems no studysideMessage will have been saved and ds.message(<newobj>)
will return the message: "ALL OK: there are no studysideMessage(s) on this datasource".
}
\description{
merges (links) two data.frames together based on common
values in defined vectors in each data.frame
}
\details{
For further information see details of the native R function \code{merge}
and the DataSHIELD clientside function \code{ds.merge}.
}
\author{
Paul Burton, Demetris Avraam, for DataSHIELD Development Team
}
