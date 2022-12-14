#' makes an not fitted model
#'
#'
#' @param parameters data set with parameters with rows called betas and covariateIds
#'
#' @return returns a 'fake' model
#' @export
#'
makeLogisticModel<- function( parameters){
  covariateImportance <- ""
  trainDetails  <-""
  modelDesign  <- ""
  covariateId <- (parameters[-1,"covariateIds"])

  normFactors <- data.frame(covariateId = covariateId,
                            maxValue = rep(1,length(parameters[1])))

  preprocessing  <- list(featureEngineering = NULL,
                         tidyCovariates = list(normFactors= normFactors ))

  model <- list(modelType= "logistic", coefficients= parameters)

  mademod <- list(covariateImportance = covariateImportance,
                  trainDetails = trainDetails,
                  modelDesign = modelDesign,
                  preprocessing = preprocessing,
                  model = model
  )

  # what do these mean? i just added them so it will work.
  attr(mademod, "predictionFunction")<- "predictCyclops"
  attr(mademod, "modelType")<- "binary"

  return(mademod)
}
