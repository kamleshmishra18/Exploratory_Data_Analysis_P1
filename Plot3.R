## Download the file
#                if(!file.exists("./data")){dir.create("./data")}
#                fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#                download.file(fileUrl,destfile="./data/Electric_power_consumption.zip")
#
## Unzip dataSet to /data directory
#                unzip(zipfile="./data/Electric_power_consumption.zip",exdir="./data")
#
## Read txt file in a variable applying filters.
#                raw_data <- read.csv("./data/household_power_consumption.txt", header=T, sep=';', na.strings="?", 
#                              nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
#                filter_data <- subset(raw_data, Date %in% c("1/2/2007","2/2/2007"))
#                filter_data$Date <- as.Date(filter_data$Date, format="%d/%m/%Y")
#                datetime <- paste(as.Date(filter_data$Date), filter_data$Time)
#                filter_data$Datetime <- as.POSIXct(datetime)
## filter_data is the variable where we have stored data for electical consumption for two days.
                 with(filter_data, plot(Sub_metering_1~datetime, type="l", ylab="Global Active Power (kilowatts)", xlab=""))
                 with(filter_data, lines(Sub_metering_2~datetime,col='Red')
                 with(filter_data, lines(Sub_metering_3~datetime,col='Blue')
                 
                 legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
                          legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
                 
## Saving to file
                  dev.copy(png, file="plot3.png", height=480, width=480)
                  dev.off()
                      
