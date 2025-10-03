#' Add list of attributes to \link[otel]{otel_span} object
#'
#' @param span \link[otel]{otel_span} object.
#' @param attrs list with named attributes.
#'
#' @returns \code{span} with added attributes, \code{attrs}.
#' @keywords internal
otel_add_attributes <- function(span, attrs) {
  for (name in names(attrs)) {
    value <- getElement(attrs, name)          # get attribute value             
    value <- ifelse(is.na(value), "", value)  # check if value is missing, NA
    span$set_attribute(name, value)           # set new attribute
  }
  invisible(span)
}
