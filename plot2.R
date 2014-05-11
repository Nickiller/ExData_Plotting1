require(sqldf)
tmpsql <- tmpsql <- "select * from file where Date = '2/2/2007' or Date = '1/2/2007'"
d <- read.csv2.sql("household_power_consumption.txt",tmpsql)
d$DateTime <- strptime(paste(d$Date, d$Time), format="%d/%m/%Y %H:%M:%S")
png(file="plot2.png",width=480,height=480)
plot(d$DateTime,d$Global_active_power,type="l",ylab = "Global Active Power(kilowatts)",xlab="")
dev.off()