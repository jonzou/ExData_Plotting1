df.pa <- dget("df.txt")
png(file="plot2.png")
plot(df.pa$datetime, df.pa$Global_active_power, xlab="", ylab="Global Active Power(kilowatts)", main="", type="l")
dev.off()
