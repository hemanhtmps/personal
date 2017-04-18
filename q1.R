#assignemnt1
library(dplyr)
setwd("C:/Users/hemanth/Desktop/Work/Analytics/FR24")
flightData = read.csv("20140131_flights.csv")
flightData = select(flightData, -reserved)

acToDEL = filter(flightData, real_to == "DEL")
acToDELUniq = acToDEL[!duplicated(acToDEL$reg),]
cat ("Aircrafts to DELHI:", length(acToDELUniq[,1]), "\n")

acToLNDN = filter(flightData, real_to == "LHR")
acToLNDNUniq = acToLNDN[!duplicated(acToLNDN$reg),]
cat ("Aircrafts to LONDON:", length(acToLNDNUniq[,1]))