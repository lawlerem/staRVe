#' @include classes.R generics.R
NULL

#################
###           ###
### Construct ###
###           ###
#################

#' @details The \code{initialize} function is not mean to be used by the user,
#'   use \code{staRVe_process_parameters} instead.
#'
#' @export
#' @rdname staRVe_process_parameters
setMethod(
  f = "initialize",
  signature = "staRVe_process_parameters",
  definition = function(.Object,
                        covariance_function = character(0),
                        spatial_parameters = data.frame(par = numeric(0),
                                                        fixed = numeric(0)),
                        time_parameters = data.frame(par = numeric(0),
                                                     fixed = numeric(0))) {
    covariance_function(.Object)<- covariance_function
    spatial_parameters(.Object)<- spatial_parameters
    time_parameters(.Object)<- time_parameters

    return(.Object)
  }
)


##############
###        ###
### Access ###
###        ###
##############

#' Get or set slots from an object of class \code{staRVe_process_parameters}.
#'
#' @param x An object of class \code{staRVe_process_parameters}.
#' @param value A replacement value
#'
#' @family Access_staRVe_process_parameters
#' @name Access_staRVe_process_parameters
NULL

#' @export
setMethod(f = "covariance_function",
          signature = "staRVe_process_parameters",
          definition = function(x) return(x@covariance_function)
)
#' @export
setReplaceMethod(f = "covariance_function",
                 signature = "staRVe_process_parameters",
                 definition = function(x,value) {
  x@covariance_function<- value
  return(x)
})



#' @export
setMethod(f = "spatial_parameters",
          signature = "staRVe_process_parameters",
          definition = function(x) return(x@spatial_parameters)
)
#' @export
setReplaceMethod(f = "spatial_parameters",
                 signature = "staRVe_process_parameters",
                 definition = function(x,value) {
  x@spatial_parameters<- value
  return(x)
})



#' @export
setMethod(f = "time_parameters",
          signature = "staRVe_process_parameters",
          definition = function(x) return(x@time_parameters)
)
#' @export
setReplaceMethod(f = "time_parameters",
                 signature = "staRVe_process_parameters",
                 definition = function(x,value) {
  x@time_parameters<- value
  return(x)
})