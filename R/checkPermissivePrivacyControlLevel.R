#'
#' @title checkPermissivePrivacyControlLevel
#' @description This server-side function check that the server is running in "permissive" privacy control level.
#' @details Tests whether the R option "datashield.privacyControlLevel" is set to "permissive", if it isn't
#' will cause a call to stop() with the message "BLOCKED: The server is running in 'non-permissive' mode which 
#' has caused this method to be blocked".
#' @param privacyControlLevels is a vector of strings which contains the privacy control level names which are permitted by the calling method.
#' 
#' @author Wheater, Dr SM., DataSHIELD Development Team.
#' 
#' @return No return value, called for side effects
#' @export
#'
checkPermissivePrivacyControlLevel <- function(privacyControlLevels){
  # start OpenTelemetry span
  span <- otel::start_local_active_span(deparse1(sys.call(0)[[1]]))

    disclosureSettings <- dsBase::listDisclosureSettingsDS()
    if (is.null(disclosureSettings) || is.null(disclosureSettings$datashield.privacyControlLevel) ||
        (! any(disclosureSettings$datashield.privacyControlLevel %in% privacyControlLevels))) {
      span$set_status("error", "BLOCKED: The server is running in 'non-permissive' mode which has caused this method to be blocked")
        stop("BLOCKED: The server is running in 'non-permissive' mode which has caused this method to be blocked", call. = TRUE)
    }

    invisible()   
}
