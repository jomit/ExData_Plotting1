source("loadEPCData.R")
twoDayData = getTwoDayEPCData()

png(filename = "plot2.png", width = 480, height = 480)
plot(twoDayData$DateTime, twoDayData$Global_active_power, type="l", 
     xlab="", ylab="Global Active Power (kilowatts)")
dev.off()