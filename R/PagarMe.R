#' PagarMe class
#'
#' @aliases PagarMe PagarMe
#' @export PagarMe PagarMe

PagarMe <- methods::setRefClass(
    "PagarMe",

    fields = list(
        api_endpoint   = "character",
        open_timeout   = "numeric",
        timeout        = "numeric",
        api_key        = "character",
        encryption_key = "character"
    )
)