#' simulate a new outcome
#'
#' @param props a vector with the probabilities ordered by rowId
#' @param noPersons number of persons in the returned data set
#'
#' @return returns a dataframe with newOutcomes and subjectId
#' @export
#'
newOutcomes<- function( noPersons, props ){

  index <-  sort(sample( props$rowId, noPersons, replace=T))

  pickedprops <- props %>%
    dplyr::filter(rowId %in% !!index) %>%
    dplyr::arrange(rowId)%>%
    dplyr::select(value)

  newOutcomes <- stats::rbinom(noPersons, 1, pickedprops$value)


  return(data.frame(rowId = index, outcomeCount= newOutcomes ) )
}
