library(dplyr)
mydata = read.csv("data-15b9edb9baa.csv")
mydata$modColour = tolower(mydata$Colour)
colorsinData = c("blue", "blue" ,  "green",  "green"  ,"purple" ,"purple", "red",    "red",    "red" )
mydata$modColour = colorsinData[match(mydata$modColour,tolower(levels(mydata$Colour)))]

bluedata = filter(mydata,modColour == "blue")
reddata = filter(mydata,modColour == "red")
greendata = filter(mydata,modColour == "green")
purpledata = filter(mydata,modColour == "purple")


blueNum = length(filter(mydata,modColour == "blue")[,1])
redNum = length(filter(mydata,modColour == "red")[,1])
greenNum = length(filter(mydata,modColour == "green")[,1])
purpleNum = length(filter(mydata,modColour == "purple")[,1])

blueMean = mean(filter(mydata,modColour == "blue")[,1])
redMean = mean(filter(mydata,modColour == "red")[,1])
greenMean = mean(filter(mydata,modColour == "green")[,1])
purpleMean = mean(filter(mydata,modColour == "purple")[,1])

blueVar = var(filter(mydata,modColour == "blue")[,1])
redVar = var(filter(mydata,modColour == "red")[,1])
greenVar = var(filter(mydata,modColour == "green")[,1])
purpleVar = var(filter(mydata,modColour == "purple")[,1])

print(c("Num of Blue:", blueNum, "Num of green:",greenNum,"Num of red:", redNum,"Num of purple:", purpleNum))
print(c("Mean of blue:",blueMean, "Variance of blue:", blueVar, "Mean of green:",greenMean,"Variance of green:",greenVar,"Mean of red:",redMean, "Varinace of red:", redVar, "Mean of pruple:",purpleMean, "Variance of Purple:", purpleVar))

print (c("%Blue Pass;", 100*length(bluedata[bluedata$Vals>=13,][bluedata$Vals<=14,][,1])/blueNum))
print (c("%Green Pass;", 100*length(greendata[greendata$Vals>=13,][greendata$Vals<=14,][,1])/greenNum))
print (c("%Red Pass;", 100*length(reddata[reddata$Vals>=13,][reddata$Vals<=14,][,1])/redNum))
print (c("%Purple Pass;", 100*length(purpledata[purpledata$Vals>=13,][purpledata$Vals<=14,][,1])/purpleNum))