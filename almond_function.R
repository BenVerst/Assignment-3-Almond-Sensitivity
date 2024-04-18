#' Function: almond_yield_fun
#' Description: Calculates almond yield anomaly based on minimum temperature and precipitation data.
#' Inputs:
#'   @param min_temp: minimum daily temperature of February (degrees Celsius)
#'   @param precip: total precipitation of *January* (millimeters)
#' Output:
#'   df: Data frame containing maximum, minimum, and mean yield anomalies.
#'       Columns:
#'         - Maximum yield anomaly
#'         - Minimum yield anomaly
#'         - Mean yield anomaly

almond_yield_fun <- function(min_temp, precip) {
  ####---require(whatever packages u need)
  # Calculate yield anomaly based on provided minimum temperature and precipitation data
  yield_anomoly <- (-0.015 * min_temp) + (-0.0046 * (min_temp^2)) + (-0.07 * precip) + (0.0043 * (precip^2)) + 0.28
  
  # Create a data frame to store maximum, minimum, and mean yield anomalies
  df <- data.frame(
    mean(yield_anomoly)
  )
  
  # Return the data frame containing yield anomalies
  return(df)
}
