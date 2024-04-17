#' Function: almond_profit()
#' Description: Calculates profit from almond yield anomoly
#' Inputs:
#'   @param price_per_pound:
#'   @param acre:
#'   @param precip: total precipitation of January (millimeters)
#'   @param min_temp: minimum daily temperature of February (degrees Celsius)
#'  
#' Output:
#'   df:
#'   
#'   
#'   
#'   


source(almond_function.R)

function(precip, min_temp, acre = 5, price_per_pound = 200, clim = "data/clim.txt"){
  
  require(tidyverse)
  
  yield_anom <- almond_yield_fun(precip, min_temp)
  
  (acre * price_per_pound * yield_anom)
  
  
}