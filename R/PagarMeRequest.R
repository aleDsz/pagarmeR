#' PagarMeRequest class
#'
#' @aliases PagarMeRequest PagarMeRequest
#' @import methods
#' @export PagarMeRequest PagarMeRequest
#' @exportClass PagarMeRequest

PagarMeRequest <- setRefClass(
    "PagarMeRequest",

    contains = c("PagarMe"),

    fields = list(
        SSL_CA_FILEPATH = "character",
        DEFAULT_HEADERS = "list",
        path = "character",
        method = "character",
        parameters = "list",
        headers = "list",
        query = "list"
    ),

    methods = list(
        initialize = function (path, method, options = list()) {
            callSuper()

            if (.self$api_key == "") {
                stop("You need to configure a API key before performing requests.")
            }

            .self$SSL_CA_FILEPATH <- "~/certs/cabundle.pem"

            .self$DEFAULT_HEADERS <- list(
                c("Content-Type", "application/json; charset=utf8"),
                c("Accept", "application/json"),
                c("User-Agent", "pagarmeR/1.0.0")
            )

            .self$path <- path
            .self$method <- method
            .self$parameters <- options[["params"]]
            .self$query <- options[["query"]]
            .self$headers <- options[["headers"]]

        },

        get_url = function() {

        },

        create = function () {

        },

        save = function () {

        },

        find_by_id = function (id) {

        },

        find_by = function (params = list(), page = NA, count = NA) {

        }

    )
)
