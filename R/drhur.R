#' Calling for an Exercise in Dr Hu's R Workshop
#'
#' The function calls a \code{\link[learnr]{run_tutorial}} function to open a \code{learnr} project. The project list is continually updated along with the R workshop with Dr. Hu.
#' 
#' @param workshop A character vector indicating the name of the workshop to open. See details for the workshop list.
#' @param lang A character vector indicating the display language. The current version includes workshops in English (\code{en}) and simple Chinese (\code{cn}). The default is Chinese.
#'
#' @details The list of workshop available for the current version:
#' \itemize{
#' \item \code{calculate}: Doing basic maths with R syntax.
#' \item \code{play}: Basic data structure in R; inputting, outputting, and creating data.
#' \item \code{wrangle}: Generalizing (such as sorting and summarizing) and extracting (selecting or adjusting certain columns or rows) data frames.
#' \item \code{describe}: Skills to describe variable and data.
#' \item \code{visualize}: Describing variables, exploring patterns, and presenting estimates with visualization tools.
#' }
#'
#' @import learnr
#'
#' @export

drhur <- function(workshop, lang = "cn") {
  lang_suffix <- ifelse(lang == "cn", "_cn", "_en")
  workshop <- paste0(workshop, lang_suffix)
  learnr::run_tutorial(workshop, package = "drhur")
}
 
