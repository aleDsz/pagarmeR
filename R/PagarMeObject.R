#' PagarMeObject class
#'
#' @aliases PagarMeObject PagarMeObject
#' @export PagarMeObject PagarMeObject

PagarMeObject <- methods::setRefClass(
    "PagarMeObject",

    fields = list(
        attributes          = "list",
        unsaved_attributes  = "list"
    ),

    methods = list(

        initialize = function (response = list()) {
            attributes         <<- list()
            unsaved_attributes <<- list()

            update(response)
        },

        set = function (key, value) {
            attributes[[length(attributes)]]                  <<- c(key, value)
            unsaved_attributes[[length(unsaved_attributes)]]  <<- c(key, value)
        },

        get = function (key) {
            return(attributes[[key]])
        },

        update = function(response = list()) {
            attributes         <<- response
            unsaved_attributes <<- list()
        }

    )
)