df.pa <- dget("df.txt")
png(file="plot4.png")
par(mfrow=c(2,2))
plot(df.pa$datetime, df.pa$Global_active_power, xlab="", ylab="Global Active Power", main="", type="l")
plot(df.pa$datetime, df.pa$Voltage, xlab="datetime", ylab="Voltage", main="", type="l")
plot(df.pa$datetime, df.pa$Sub_metering_1, xlab="", ylab="Energy sub metering", main="", type="l")
lines(df.pa$datetime, df.pa$Sub_metering_2, col='red')
lines(df.pa$datetime, df.pa$Sub_metering_3, col='blue')
legend('topright',,c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), lty=1,col=c('black','red','blue'), bty='n')
plot(df.pa$datetime, df.pa$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", main="", type="l")
dev.off()
