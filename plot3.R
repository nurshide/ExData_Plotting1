## Assignment 1, plot 3, Energy sub metering between Thur-Fri-Sat

dt <- read.table("household_power_consumption.txt", sep=";", header=TRUE, 
                   colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"),
                   na.strings="?")

## subset data for two days
dt$DateTime <- strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S")
dtp <- subset(dt, as.Date(DateTime) >= as.Date("2007-02-01") & as.Date(DateTime) <= as.Date("2007-02-02"))

png("plot3.png", height=480, width=480)

plot(dtp$DateTime, dtp$Sub_metering_1, pch=NA, xlab="", ylab="Energy sub metering")
lines(dtp$DateTime, dtp$Sub_metering_1)
lines(dtp$DateTime, dtp$Sub_metering_2, col='red')
lines(dtp$DateTime, dtp$Sub_metering_3, col='blue')
legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c('black', 'red', 'blue'), lty = c(1,1,1))

dev.off()

