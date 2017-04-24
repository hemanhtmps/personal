mydata = read.csv("data-15b9edb9baa.csv")
mydata$modColour = tolower(mydata$Colour)
colorsinData = c("blue", "blue" ,  "green",  "green"  ,"purple" ,"purple", "red",    "red",    "red" )
mydata$modColour = colorsinData[match(mydata$modColour,tolower(levels(mydata$Colour)))]
blueMean = mean(filter(mydata,modColour == "blue")[,1])
redMean = mean(filter(mydata,modColour == "red")[,1])
greenMean = mean(filter(mydata,modColour == "green")[,1])
purpleMean = mean(filter(mydata,modColour == "purple")[,1])
blueVar = var(filter(mydata,modColour == "blue")[,1])
redVar = var(filter(mydata,modColour == "red")[,1])
greenVar = var(filter(mydata,modColour == "green")[,1])
purpleVar = var(filter(mydata,modColour == "purple")[,1])

print(c("Mean of blue:",blueMean, "Variance of blue:", blueVar, "Mean of green:",greenMean,"Variance of green:",greenVar,"Mean of red:",redMean, "Varinace of red:", redVar, "Mean of pruple:",purpleMean, "Variance of Purple:", purpleVar))
