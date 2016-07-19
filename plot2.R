
d <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
d$Date <- as.Date(d$Date,"%d/%m/%Y")
d <- subset( d,Date>=as.Date("2007-02-01") & Date<=as.Date("2007-02-02"))
d$Global_active_power <- as.numeric(as.character(d$Global_active_power))
d$dt <- as.POSIXct(paste(d$Date,d$Time))
png('plot2.png')
plot(d$dt,d$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()
