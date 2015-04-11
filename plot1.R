source("loadEPCData.R")
twoDayData = getTwoDayEPCData()

png(filename = "plot1.png", width = 480, height = 480)
hist(twoDayData$Global_active_power,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()