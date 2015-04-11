getTwoDayEPCData <- function(){
    
    library(data.table)
    fileName = "household_power_consumption.txt"
    startDate = "2007-02-01"
    endDate = "2007-02-02"
    
    # add colClasses to make it load faster
    epcdata = fread(fileName, header=TRUE, sep=";", na="?", colClasses="character")
    
    #Convert the date column
    epcdata$Date = as.Date(epcdata$Date,format="%d/%m/%Y")
    
    # filter out only 2 days of data 
    twodaydata = epcdata[epcdata$Date>=startDate & epcdata$Date<=endDate,]
    
    twodaydata = data.frame(twodaydata)
    
    # Convert  columns to numeric format 
    for(columnNumber in c(3:9)) { 
        twodaydata[,columnNumber] = as.numeric(as.character(twodaydata[,columnNumber])) 
    } 
    
    #Create a datetime column for plotting
    twodaydata$DateTime <- paste(twodaydata$Date, twodaydata$Time) 
    twodaydata$DateTime <- strptime(twodaydata$DateTime, format = "%Y-%m-%d %H:%M:%S") 
    
    return (twodaydata);
}