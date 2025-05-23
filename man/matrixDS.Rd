% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/matrixDS.R
\name{matrixDS}
\alias{matrixDS}
\title{matrixDS assign function called by ds.matrix}
\usage{
matrixDS(mdata.transmit, from, nrows.transmit, ncols.transmit, byrow, dimnames)
}
\arguments{
\item{mdata.transmit}{specifies the elements of the matrix to be created. Fully
specified by <mdata> argument of ds.matrix}

\item{from}{a character string specifying the source and nature of <mdata>.
Fully specified by <from> argument of ds.matrix}

\item{nrows.transmit}{specifies the number of rows in the matrix to be created.
Fully specified by <nrows.scalar> argument of ds.matrix}

\item{ncols.transmit}{specifies the number of columns in the matrix to be created.
Fully specified by <ncols.scalar> argument of ds.matrix}

\item{byrow}{a logical value specifying whether, when <mdata> is a vector,
the matrix created should be filled row by row or
column by column.
Fully specified by <byrow> argument of ds.matrix}

\item{dimnames}{A dimnames attribute for the matrix: NULL or a list of length 2 giving
the row and column names respectively. An empty list is treated as NULL,
and a list of length one as row names only.
Fully specified by <dimnames> argument of ds.matrix}
}
\value{
Output is the matrix A written
to the serverside. For more details see help for ds.matrix
}
\description{
Creates a matrix A on the serverside
}
\details{
Similar to the \code{matrix()} function in native R. Creates a matrix
with dimensions specified by <nrows.scalar> and <ncols.scalar> arguments
and assigns the values of all its elements based on the <mdata> argument
}
\author{
Paul Burton for DataSHIELD Development Team
}
