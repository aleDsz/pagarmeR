#' PagarMeModel class
#'
#' @aliases PagarMeModel PagarMeModel
#' @export PagarMeModel PagarMeModel

PagarMeModel <- methods::setRefClass(
    "PagarMeModel",

    contains = c("PagarMeObject"),

    methods = list(

        initialize = function (response = list()) {
            callSuper(response)
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