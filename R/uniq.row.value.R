#' uniq.row.value
#'
#' take a data frame and return how many unique values each row has
#'
#' @param df A data frame.
#' @returns Numbers of unique values in each row
#' @references https://www.tutorialspoint.com/how-to-find-the-number-of-unique-values-in-each-row-of-an-r-data-frame
#' @importFrom dplyr rename
#' @importFrom rlang enquo
#' @importFrom rlang quo_name
#' @importFrom rlang :=
#' @examples
#'
#' data(mtcars) # from datasets-package {datasets}
#' uniq.row.value(mtcars)
#'
#' data(iris) # datasets-package {datasets}
#' uniq.row.value(iris)
#' @export

uniq.row.value <- function(df){
  print_message2(df)
  if(!is.data.frame(df)) stop("please enter a valid data frame")
  apply(df, 1, get_unique)
}
