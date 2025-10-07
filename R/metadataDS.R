#'
#' @title Returns the metadata, if any, about the specified variable
#' @description This function returns metadata, if any, about specified variable.
#' @details The function returns the metadata, obtained from attributes function.
#' @param x a string character, containing the name  of the specified variable
#' @return a list containing the metadata. The elements of the list will depend
#' on the metadata available.
#' @author Stuart Wheater, for DataSHIELD Development Team
#' @export
#'
metadataDS <- function(x)
{
  # start OpenTelemetry span
  span <- otel::start_local_active_span(deparse1(sys.call(0)[[1]]))
  
    if (is.null(x)) {
      studysideMessage <- "Variable's name can't be NULL"
      span$set_status("error", studysideMessage)
      stop(studysideMessage, call. = FALSE)
    }

    if ((! is.character(x)) || (length(x) != 1)) {
      studysideMessage <- "Variable's name isn't be single character vector"
      span$set_status("error", studysideMessage)
      stop(studysideMessage, call. = FALSE)
    }

    x.var <- eval(parse(text=x), envir = parent.frame())

    if (is.null(x.var)) {
      studysideMessage <- "Variable can't be NULL"
      span$set_status("error", studysideMessage)
      stop(studysideMessage, call. = FALSE)
    }

    # find the metadata specified variable
    metadata_attributes       <- attributes(x.var)
    metadata_attributes_names <- names(metadata_attributes)
    permitted_attribute_names <- c('names', 'spec', 'class', 'label', 'opal.value_type', 'opal.entity_type', 'opal.repeatable', 'opal.index', 'opal.nature')

    metadata <- list()
    for (permitted_attribute_name in permitted_attribute_names)
        if (permitted_attribute_name %in% metadata_attributes_names)
            metadata[[permitted_attribute_name]] <- metadata_attributes[[permitted_attribute_name]]

    # return metadata
    return(metadata)
}
#AGGREGATE FUNCTION
# metadataDS
