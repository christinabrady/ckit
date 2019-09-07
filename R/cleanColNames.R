#' Standardizes column names
#'
#' Sets column names to all lower case with underscores instead of spaces or periods.
#' @param dataframe
#' @export
#' @examples
#' cleanColNames(head(iris))


cleanColNames <- function(dat){
  tmp <- gsub("\\.+", "_", tolower(colnames(dat)))
  tmp <- gsub("\\s+", "_", tmp)
  colnames(dat) <- tmp
  dat
}
