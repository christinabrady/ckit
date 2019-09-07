#' A function to convert characters to numerics.
#'
#' This function converts money and other excel numeric variables that get coded as characters to numerics.
#' @param Any number with comma, dollar signs, pecent signs or spaces in it.
#' @keywords numerics
#' @export
#' @examples
#' charToNum("$1,204,444")


charToNum <- function(charred_num){
  as.numeric(gsub("\\$|\\,|\\s+|\\%", "", charred_num))
}
