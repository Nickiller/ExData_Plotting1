require(sqldf)
tmpsql <- tmpsql <- "select * from file where Date = '2/2/2007' or Date = '1/2/2007'"
d <- read.csv2.sql("household_power_consumption.txt",tmpsql)
d$DateTime <- strptime(paste(d$Date, d$Time), format="%d/%m/%Y %H:%M:%S")
png(file="plot1.png",width=480,height=480)
hist(d$Global_active_power,col="Red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()