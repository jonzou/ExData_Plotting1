library(dplyr)
cnames <- read.table('household_power_consumption.txt', sep=";", header=F, nrows=1, colClasses=rep('character',9))
df.pa <- read.table('household_power_consumption.txt', sep=";", header=F, na.strings="?", colClasses=c('character', 'character', rep('numeric', 7)), skip=66637, nrows=2880)
colnames(df.pa) <- cnames
df.pa <- mutate(df.pa,datetime=as.POSIXct(paste(Date, Time), format='%d/%m/%Y %H:%M:%S'))
dput(df.pa, file="df.txt")
