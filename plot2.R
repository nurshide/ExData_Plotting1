## Assignment 1, plot 2, Global Active Power between Thur-Fri-Sat

dt <- read.table("household_power_consumption.txt", sep=";", header=TRUE, 
                   colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"),
                   na.strings="?")

## subset data for two days
dt$DateTime <- strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S")
dtp <- subset(dt, as.Date(DateTime) >= as.Date("2007-02-01") & as.Date(DateTime) <= as.Date("2007-02-02"))

## plot
png("plot2.png", height=480, width=480)

plot(dtp$DateTime, dtp$Global_active_power, pch=NA, xlab="", ylab="Global Active Power (kilowatts)")
lines(dtp$DateTime, dtp$Global_active_power)

dev.off()


