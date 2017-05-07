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

#print (head(routesIND))
DELBOMData = filter(indData,route=="DELBOM")
DELBOMflightid = select(DELBOMData, flight_id)
DELBOMflightid$filename = paste("20140131", DELBOMflightid$flight_id,sep="_")
setwd("C:/Users/hemanth/Desktop/Work/Analytics/FR24/files_20000")
DELBOMflightid$start = rep(0,nrow(DELBOMData))
DELBOMflightid$end = rep(0,nrow(DELBOMData))
for(i in 1:length(DELBOMflightid[,1])){
  temp1 = read.csv(paste(DELBOMflightid[i,2],".csv",sep=""))
  DELBOMflightid[i,3] = temp1[1,1]
  DELBOMflightid[i,4] = temp1[length(temp1[,1]),1]
}
mutate(DELBOMflightid, time = start-end)