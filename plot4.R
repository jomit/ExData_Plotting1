source("loadEPCData.R")
twoDayData = getTwoDayEPCData()

png(filename = "plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
hist(twoDayData$Global_active_power,col="red",main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")

plot(twoDayData$DateTime, twoDayData$Voltage, type="l", 
     xlab="datetime", ylab="Voltage")


plot(twoDayData$DateTime, twoDayData$Sub_metering_1, type="l", 
     col="black", xlab="", ylab="Energy sub metering") 
lines(twoDayData$DateTime, twoDayData$Sub_metering_2, type="l", col="red") 
lines(twoDayData$DateTime, twoDayData$Sub_metering_3, type="l", col="blue") 
legend("topright",lty=1,col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(twoDayData$DateTime, twoDayData$Global_reactive_power, type="l", 
     xlab="datetime", ylab="Global_reactive_power")

dev.off()