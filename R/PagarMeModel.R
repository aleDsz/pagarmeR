#' PagarMeModel class
#'
#' @aliases PagarMeModel PagarMeModel
#' @import methods
#' @export PagarMeModel PagarMeModel
#' @exportClass PagarMeModel

PagarMeModel <- setRefClass(
    "PagarMeModel",

    contains = c("PagarMe"),

    fields = list(
        attributes = "list",
        unsaved_attributes = "list"
    ),

    methods = list(
        initialize = function (response = list()) {
            callSuper()

            .self$attributes <- list()
            .self$unsaved_attributes <- list()

            .self$update(response)
        },

        set = function (key, value) {
            .self$attributes[[length(.self$attributes)]] <- c(key, value)
            .self$unsaved_attributes[[length(.self$unsaved_attributes)]] <- c(key, value)
        },

        get = function (key) {
            return(.self$attributes[[key]])
        },

        update = function(response = list()) {
            .self$attributes <- response
            .self$unsaved_attributes <- list()
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