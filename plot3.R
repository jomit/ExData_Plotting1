source("loadEPCData.R")
twoDayData = getTwoDayEPCData()

png(filename = "plot3.png", width = 480, height = 480)
plot(twoDayData$DateTime, twoDayData$Sub_metering_1, type="l", 
     col="black", xlab="", ylab="Energy sub metering") 
lines(twoDayData$DateTime, twoDayData$Sub_metering_2, type="l", col="red") 
lines(twoDayData$DateTime, twoDayData$Sub_metering_3, type="l", col="blue") 
legend("topright",lty=1,col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()