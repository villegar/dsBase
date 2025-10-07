#'
#' @title Creates a vector on the server-side.
#' @description This function is similar to R function \code{c}.
#' @details The function computes the vectors values.
#' @param ... parameter to be used to form the vector.
#' @return the object specified by the \code{newobj} argument
#' which is written to the server-side.
#' @author Stuart Wheater for DataSHIELD Development Team
#' @export
#'
vectorDS <- function(...){
  # start OpenTelemetry span
  span <- otel::start_local_active_span(deparse1(sys.call(0)[[1]]))
  
    # Check Permissive Privacy Control Level.
    dsBase::checkPermissivePrivacyControlLevel(c('permissive', 'banana', 'carrot'))

    # compute the vector's value
    out <- c(...)

    # assign the outcome to the data servers
    return(out)
}
# ASSIGN FUNCTION
# vectorDS
