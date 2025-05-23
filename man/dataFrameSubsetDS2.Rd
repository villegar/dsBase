% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataFrameSubsetDS2.R
\name{dataFrameSubsetDS2}
\alias{dataFrameSubsetDS2}
\title{dataFrameSubsetDS2 an assign function called by ds.dataFrameSubset}
\usage{
dataFrameSubsetDS2(
  df.name = NULL,
  V1.name = NULL,
  V2.name = NULL,
  Boolean.operator.n = NULL,
  keep.cols = NULL,
  rm.cols = NULL,
  keep.NAs = NULL
)
}
\arguments{
\item{df.name}{a character string providing the name for the data.frame
to be sorted. <df.name> argument generated and passed directly to
dataFrameSubsetDS2 by ds.dataFrameSubset}

\item{V1.name}{A character string specifying the name of a subsetting vector
to which a Boolean operator will be applied to define the subset to be created.
<V1.name> argument generated and passed directly to
dataFrameSubsetDS2 by ds.dataFrameSubset}

\item{V2.name}{A character string specifying the name of the vector
or scalar to which the values in the vector specified by the argument <V1.name>
is to be compared.
<V2.name> argument generated and passed directly to
dataFrameSubsetDS2 by ds.dataFrameSubset}

\item{Boolean.operator.n}{A character string specifying one of six possible Boolean operators:
'==', '!=', '>', '>=', '<', '<='
<Boolean.operator.n> argument generated and passed directly to
dataFrameSubsetDS2 by ds.dataFrameSubset}

\item{keep.cols}{a numeric vector specifying the numbers of the columns to be kept in the
final subset when subsetting by column. For example: keep.cols=c(2:5,7,12) will keep
columns 2,3,4,5,7 and 12.
<keep.cols> argument generated and passed directly to
dataFrameSubsetDS2 by ds.dataFrameSubset}

\item{rm.cols}{a numeric vector specifying the numbers of the columns to be removed before
creating the final subset when subsetting by column. For example: rm.cols=c(2:5,7,12)
will remove columns 2,3,4,5,7 and 12.
<rm.cols> argument generated and passed directly to
dataFrameSubsetDS2 by ds.dataFrameSubset}

\item{keep.NAs}{logical, if TRUE any NAs in the vector holding the final Boolean vector
indicating whether a given row should be included in the subset will be converted into
1s and so they will be included in the subset. Such NAs could be caused by NAs in
either <V1.name> or <V2.name>. If FALSE or NULL NAs in the final Boolean vector will
be converted to 0s and the corresponding row will therefore be excluded from the subset.
<keep.NAs> argument generated and passed directly to
dataFrameSubsetDS2 by ds.dataFrameSubset}
}
\value{
the object specified by the <newobj> argument (or default name '<df.name>_subset')
initially specified in calling ds.dataFrameSubset. The output object (the required
subsetted data.frame called <newobj> is written to the serverside. In addition,
two validity messages are returned via ds.dataFrameSubset
indicating whether <newobj> has been created in each data source and if so whether
it is in a valid form. If its form is not valid in at least one study - e.g. because
a disclosure trap was tripped and creation of the full output object was blocked -
dataFrameSubsetDS2 (via ds.dataFrame()) also returns any studysideMessages
that can explain the error in creating
the full output object. As well as appearing on the screen at run time,if you wish to
see the relevant studysideMessages at a later date you can use the \code{ds.message}
function. If you type ds.message("newobj") it will print out the relevant
studysideMessage from any datasource in which there was an error in creating <newobj>
and a studysideMessage was saved. If there was no error and <newobj> was created
without problems no studysideMessage will have been saved and ds.message("newobj")
will return the message: "ALL OK: there are no studysideMessage(s) on this datasource".
}
\description{
Second serverside function for subsetting a data frame by row or by column.
}
\details{
A data frame is a list of variables all with the same number of rows,
which is of class 'data.frame'. For all details see the help header for ds.dataFrameSubset
}
\author{
DataSHIELD Development Team
}
