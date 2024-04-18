#' Function: almond_profit()
#' Description: Calculates profit from almond yield anomoly
#' Inputs:
#'   @param price_per_pound: Price of almonds per pound (lbs)
#'   @param acre: size of the farm (acres)
#'   @param precip: total precipitation of January (millimeters)
#'   @param min_temp: minimum daily temperature of February (degrees Celsius)
#'   @param average_yield: the average or expected yield (lbs per acre)
#'  
#' Output:
#'   @return profit: value for profit amount based on the above parameters.

source("almond_function.R") # Only using the mean yield anomaly

almond_profit_fun <- function(precip, min_temp, acre = 30, price_per_pound = 2, average_yield = 2000){
  
  require(tidyverse)
  
  yield_anom <- almond_yield_fun(precip, min_temp)
  
  profit <- ((average_yield + yield_anom$mean.yield_anomaly.) * acre) * price_per_pound
  
   # Return the data frame containing profit amount
   return(profit)
}