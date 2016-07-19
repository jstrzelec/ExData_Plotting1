
d <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
d$Date <- as.Date(d$Date,"%d/%m/%Y")
d <- subset( d,Date>=as.Date("2007-02-01") & Date<=as.Date("2007-02-02"))
d$Global_active_power <- as.numeric(as.character(d$Global_active_power))
png('plot1.png')
hist(d$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="Red")
dev.off()
