
d <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
d$Date <- as.Date(d$Date,"%d/%m/%Y")
d <- subset( d,Date>=as.Date("2007-02-01") & Date<=as.Date("2007-02-02"))
d$Global_active_power <- as.numeric(as.character(d$Global_active_power))
d$dt <- as.POSIXct(paste(d$Date,d$Time))

d$Sub_metering_1 <- as.numeric(as.character(d$Sub_metering_1))
d$Sub_metering_2 <- as.numeric(as.character(d$Sub_metering_2))
d$Sub_metering_3 <- as.numeric(as.character(d$Sub_metering_3))

png('plot3.png')
plot(d$dt,d$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
lines(d$dt,d$Sub_metering_1,type="l")
lines(d$dt,d$Sub_metering_2,type="l",col="red")
lines(d$dt,d$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))
dev.off()
