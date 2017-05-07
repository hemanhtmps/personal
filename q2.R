#assignemnt1
library(dplyr)
setwd("C:/Users/hemanth/Desktop/Work/Analytics/FR24")
flightData = read.csv("20140131_flights.csv")
indAP = read.csv("IATA_INDIA.csv")$IATA_INDIA

indData = filter(flightData, schd_to %in% indAP)
indData = filter(indData, schd_from %in% indAP)
indData$route = paste(indData$schd_from,indData$schd_to,sep="")
routesIND <- tbl_df(table(indData$route))
routesIND = routesIND[order(-routesIND$n),]

print (head(routesIND))