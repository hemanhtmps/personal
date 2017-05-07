#assignemnt1
library(dplyr)
library(lubridate)
setwd("C:/Users/hemanth/Desktop/Work/Analytics/FR24")
flightData = read.csv("20140131_flights.csv")
path = paste("files_20000/20140131_", toString(flightData[1,1]), ".csv",sep = "") 
flightIdData =  read.csv(path)
timeinSec = flightIdData[1,1]
print(as.POSIXct(timeinSec,origin = "1970-01-01",tz = "GMT"))