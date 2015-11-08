## Assignment 1, plot 1, Histogram of Global Active Power

dt <- read.table("household_power_consumption.txt", sep=";", header=TRUE, 
    colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), 
    na.strings="?")

## subset data for two days
dt$DateTime <- strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S")
dtp <- subset(dt, as.Date(DateTime) >= as.Date("2007-02-01") & as.Date(DateTime) <= as.Date("2007-02-02"))

## plot
png("plot1.png", height=480, width=480)
hist(dtp$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off() 

