install.packages("lubridate") 
install.packages('chron')
install.packages("tidyverse") 
install.packages("hms") 
library(dplyr)
library(tidyr)
library(lubridate) 

#1. Enter your time in "HH:MM:SS.OOO" format to get seconds with this timechatter function
timechatter  <- function(yourtime){sprintf("%.3f",lubridate::period_to_seconds(hms(yourtime)))}
#2. Enter your time in seconds format to get to get HH:MM:SS.OOO format
secondschatter  <- function(yourseconds){td <- seconds_to_period(yourseconds)  
sprintf('%g%g:%g:%g', day(td), td@hour, minute(td), second(td))}
