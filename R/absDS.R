#'
#' @title Computes the absolute values of the input variable
#' @description This function is similar to R function \code{abs}.
#' @details The function computes the  absolute values of an input numeric
#' or integer vector.
#' @param x a string character, the name of a numeric or integer vector
#' @return the object specified by the \code{newobj} argument
#' of \code{ds.abs} (or default name \code{abs.newobj})
#' which is written to the serverside. The output object is of class numeric
#' or integer.
#' @author Demetris Avraam for DataSHIELD Development Team
#' @export
#'
absDS <- function(x) {
  # start OpenTelemetry span
  # span <- otel::start_local_active_span("dsBase::absDS")
  span <- otel::start_local_active_span(as.character(sys.call(0)[1]))
  x.var <- eval(parse(text = x), envir = parent.frame())

  # compute the absolute values of x
  out <- abs(x.var)

  # assign the outcome to the data servers
  return(out)
}
# ASSIGN FUNCTION
# absDS
