#' Table exists
#'
#' Checks for the existence of a database table
#' @param chan open RODBC channel
#' @param tname tablename (including schema if there is one)
#' @keywords tables
#' @export
#' @examples
#' dbtest <- odbcConnect('test')
#' sqlSave(dbtest, mtcars)
#' dbexists(dbtest, mtcars)



dbexists <- function(chan, tname){
  tryCatch(tmp <- sqlQuery(chan, sprintf("SELECT * FROM %s LIMIT 1", tname)),
    error = function(e) "not a db")
  is.data.frame(tmp)
}
