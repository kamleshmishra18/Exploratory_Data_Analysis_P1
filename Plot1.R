## Download the file
##                if(!file.exists("./data")){dir.create("./data")}
##                fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
##                download.file(fileUrl,destfile="./data/Electric_power_consumption.zip")
##
## Unzip dataSet to /data directory
##                unzip(zipfile="./data/Electric_power_consumption.zip",exdir="./data")
##
## Read txt file in a variable applying filters.
##                raw_data <- read.csv("./data/household_power_consumption.txt", header=T, sep=';', na.strings="?", 
##                              nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
##                filter_data <- subset(raw_data, Date %in% c("1/2/2007","2/2/2007"))
##                filter_data$Date <- as.Date(filter_data$Date, format="%d/%m/%Y")
## filter_data is the variable where we have stored data for electical consumption for two days. 
        
        hist(filter_data$Global_active_power, main="Global Active Power", 
                xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
        
        png("plot1.png", width=480, height=480)
        dev.off()
