#' print_message for uni.row.value
#' @description prints messages
#' @keywords internal
#' @export

print_message2 <- function(x){
  df.name <- deparse(substitute(x))
  if(is.data.frame(x)){
    cat(paste("unique values in each row in", df.name,".\n"), sep = "")
  } else {
    cat(paste(df.name,"is not a data frame.\n"), sep = "")
  }
}
