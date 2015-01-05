df.pa <- dget("df.txt")
png(file="plot1.png")
hist(df.pa$Global_active_power, col='red', xlab='Global Active Power(kilowatts)', ylab='Frequency', main='Global Active Power')
dev.off()
