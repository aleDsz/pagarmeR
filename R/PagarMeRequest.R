#' PagarMeRequest class
#'
#' @aliases PagarMeRequest PagarMeRequest
#' @export PagarMeRequest PagarMeRequest

PagarMeModel <- methods::setRefClass(
    "PagarMeRequest",

    contains = c("PagarMe"),

    fields = list(

        SSL_CA_FILEPATH = "character",
        DEFAULT_HEADERS = "list",
        path            = "character",
        method          = "character",
        parameters      = "list",
        headers         = "list",
        query           = "list"

    ),

    methods = list(

        initialize = function (path, method, options = list()) {

            if (api_key == "") {
                stop("You need to configure a API key before performing requests.")
            }

            SSL_CA_FILEPATH <<- "~/certs/cabundle.pem"

            DEFAULT_HEADERS <<- list(
                c("Content-Type", "application/json; charset=utf8"),
                c("Accept",       "application/json"),
                c("User-Agent",   "pagarmeR/1.0.0")
            )

            path       <<- path
            method     <<- method
            parameters <<- options[["params"]]
            query      <<- options[["query"]]
            headers    <<- options[["headers"]]

        },

        getUrl = function() {

        },

        create = function () {

        },

        save = function () {

        },

        findById = function (id) {

        },

        findBy = function (params = list(), page = NA, count = NA) {

        }

    )
)
