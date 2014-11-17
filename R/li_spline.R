#' Linear Spline
#'
#' This function gets the linear spline of three variables w.r.t. year.
#'
#' This function gets the linear spline of three variables w.r.t. year.
#' Three default variables are pop, lifeExp and gdpPercap.
#'
#' @param x, yr
#' @return data frame of result of linear spline
#' @note the data set must contain variable year, pop, lifeExp, gdpPercap
#' @export
#' @examples
#' li_spline(x)

li_spline<-function(x, yr = 1952:2006){
	index<-floor((yr-1952)/5)
	remainder<-(yr-1952)%%5
	pop<-c((x$pop[(index+2)]-x$pop[(index+1)])/5*remainder+x$pop[(index+1)],
				 x$pop[length(x$pop)])
	lifeExp<-c((x$lifeExp[(index+2)]-x$lifeExp[(index+1)])/5*remainder+
						 	x$lifeExp[(index+1)],
						 x$lifeExp[length(x$lifeExp)])
	gdpPercap<-c((x$gdpPercap[(index+2)]-x$gdpPercap[(index+1)])/5*remainder+
							 	x$gdpPercap[(index+1)],
							 x$gdpPercap[length(x$gdpPercap)])
	return(data.frame(year = c(yr,2007),pop = pop, lifeExp = lifeExp,
										gdpPercap = gdpPercap))
}
