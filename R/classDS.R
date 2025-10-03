#'
#' @title Returns the class of an object
#' @description This function is similar to R function \code{class}.
#' @details The function returns the class of an object
#' @param x a string character, the name of an object
#' @return the class of the input object
#' @author Stuart Wheater, for DataSHIELD Development Team
#' @export
#'
classDS <- function(x){
  # start OpenTelemetry span
  span <- otel::start_local_active_span(deparse1(sys.call(0)[[1]]))

  x.val <- eval(parse(text=x), envir = parent.frame())

  # find the class of the input object
  out <- class(x.val)

  # return the class
  return(out)

}
#AGGREGATE FUNCTION
# classDS
