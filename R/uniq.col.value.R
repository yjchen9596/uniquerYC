#' uniq.col.value
#' take a data frame and return how many unique values each columns has
#'
#' @param df A data frame.
#' @returns Numbers of unique values in each column
#' @references https://discuss.analyticsvidhya.com/t/how-to-count-number-of-distinct-values-in-a-column-of-a-data-table-in-r/1124
#' @examples
#' data(mtcars) # from datasets-package {datasets}
#' uniq.col.value(mtcars)
#'
#' data(iris) # datasets-package {datasets}
#' uniq.col.value(iris)
#' @export

uniq.col.value <- function(df){
  print_message(df)
  if(!is.data.frame(df)) stop("please enter a valid data frame")
  rapply(df, get_unique)
}

# rapply(df, n_distinct)
# rapply(df, function(x) length(unique(x)))
