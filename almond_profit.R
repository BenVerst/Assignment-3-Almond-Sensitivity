#' Function: almond_profit()
#' Description: Calculates profit from almond yield anomoly
#' Inputs:
#'   @param 
#'   @param
#' Output:
#'   df:
#'   
#'   
#'   
#'   


source(almond_function.R)

function(precip, min_temp, acre = 5){
  
  yield_anom <- almond_yield_fun(precip, min_temp)
  
  (acre * 2000) + yield_anom * 
  
  
}