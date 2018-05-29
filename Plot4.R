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

                par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
                        with(data1, {
                        plot(Global_active_power~Datetime, type="l", 
                                ylab="Global Active Power (kilowatts)", xlab="")
                        plot(Voltage~Datetime, type="l", 
                                ylab="Voltage (volt)", xlab="")
                        plot(Sub_metering_1~Datetime, type="l", 
                                ylab="Global Active Power (kilowatts)", xlab="")
                        lines(Sub_metering_2~Datetime,col='Red')
                        lines(Sub_metering_3~Datetime,col='Blue')
  
                        legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
                        legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
                        plot(Global_reactive_power~Datetime, type="l", 
                                ylab="Global Rective Power (kilowatts)",xlab="")
                                      })
                        
## Saving to file
                        dev.copy(png, file="plot4.png", height=480, width=480)
                        dev.off()
