        
        
        hist(filter_data$Global_active_power, main="Global Active Power", 
                xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
        
        png("plot1.png", width=480, height=480)
        dev.off()
