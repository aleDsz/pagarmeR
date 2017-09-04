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
        encryption_key = "character",
        version        = "character"

    ),

    methods = list(

        initialize = function() {
            api_endpoint   <<- "https://api.pagar.me/1"
            open_timeout   <<- 30
            timeout        <<- 90
            api_key        <<- Sys.getenv("PAGARME_API_KEY")
            encryption_key <<- Sys.getenv("PAGARME_ENCRYPTION_KEY")
            version        <<- "1.0.0"
        }

    )
)
