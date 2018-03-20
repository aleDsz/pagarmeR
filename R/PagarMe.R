#' PagarMe class
#'
#' @aliases PagarMe PagarMe
#' @import methods
#' @export PagarMe PagarMe
#' @exportClass PagarMe

PagarMe <- setRefClass(
    "PagarMe",

    fields = list(
        api_endpoint = "character",
        open_timeout = "numeric",
        timeout = "numeric",
        api_key = "character",
        encryption_key = "character",
        version = "character"
    ),

    methods = list(
        initialize = function(api_key = NULL, encryption_key = NULL) {
            .self$api_endpoint <- "https://api.pagar.me/1"
            .self$open_timeout <- 30
            .self$timeout <- 90
            .self$api_key <- ifelse(!is.null(api_key), api_key, Sys.getenv("PAGARME_API_KEY"))
            .self$encryption_key <- ifelse(!is.null(encryption_key), encryption_key, Sys.getenv("PAGARME_ENCRYPTION_KEY"))
            .self$version <- "1.0.0"
        }
    )
)
