#' Regression results
#'
#' This function runs linear regression model for lifeExp w.r.t. year,
#' and returns the coefs and max of residual
#'
#' This function runs linear regression model for lifeExp w.r.t. year,
#' and returns the coefs and max of residual. Three return values are intercept,
#' slope and max of residual, which is defined as residual of regression over
#' sigma of regression.
#'
#' @param x
#' @return intercept, slope and max of residual
#' @note the data set must contain variable year and lifeExp
#' @export
#' @examples
#' my_lm_int(gDat)



my_lm_int <- function(x) {
	jFit <- lm(lifeExp ~ I(year - min(x$year)), x)
	jCoef <- coef(jFit)
	names(jCoef) <- NULL
	return(c(intercept = jCoef[1],
					 slope = jCoef[2],
					 maxResid = max(abs(resid(jFit)))/summary(jFit)$sigma))
}
