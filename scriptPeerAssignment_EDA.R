# Author: Nicholas Stewart
# Coursera Course: Exploratory Data Analysis
# Date: November 7, 2018

# Peer-graded assignment (week 1)

# Objective of this R script: Produce several plots (4 sets)

# NOTE: adjust directory...to your machine

power<-read.table("C:\\Users\\nstewart\\Desktop\\power consumption\\household_power_consumption.txt",header=TRUE,stringsAsFactors = FALSE,sep=";")

power$Date<-as.Date(as.character(power$Date),format="%d/%m/%Y") # get an R Date object


power<-power[power$Date >= as.Date("2007-02-01") & power$Date <= as.Date("2007-02-02"),]   # filter by date...

power$Time<-as.character(power$Time)

power$Global_active_power<-as.numeric(power$Global_active_power)

power$Global_reactive_power<-as.numeric(power$Global_reactive_power)

power$Voltage<-as.numeric(power$Voltage)

power$Global_intensity<-as.numeric(power$Global_intensity)

power$Sub_metering_1<-as.numeric(power$Sub_metering_1)

power$Sub_metering_2<-as.numeric(power$Sub_metering_2)

power$Sub_metering_3<-as.numeric(power$Sub_metering_3)

power$dayOfTheWeek<-format(power$Date,"%a") # unused

# Plot 1

hist(power$Global_active_power, main="Plot 1: Histogram of Global Active Power",xlab="Global active Power (kilowatts)",ylab="Frequency",col="red")

dev.copy(png, file = "C:\\Users\\nstewart\\Desktop\\power consumption\\plot1.png")   # create png file

dev.off()   # turn off graphics device

library(lubridate)

# Plot 2

dts<-ymd_hms(paste(power$Date,power$Time))
power$datetime<-dts
plot(power$datetime,power$Global_active_power,pch=".",xlab="Day of the week, starting 2007-02-01",ylab="Global Active Power",main="Plot2 Global Active Power versus Day of the Week")
lines(power$datetime,power$Global_active_power)

dev.copy(png, file = "C:\\Users\\nstewart\\Desktop\\power consumption\\plot2.png")   # create png file

dev.off() # turn off graphics device

# Plot 3

plot(power$datetime,power$Sub_metering_1,pch=".",xlab="Day of the week, starting 2007-02-01",ylab="Sub Metering",main="Plot 3: Sub metering Breakdown (1, 2, or 3)")
lines(power$datetime,power$Sub_metering_1)
lines(power$datetime,power$Sub_metering_2,col="red")
lines(power$datetime,power$Sub_metering_3,col="blue")
legend("top",pch = "_", col=c("black","red","blue"), legend = c("Sub metering 1","Sub metering 2","Sub metering 3"))

dev.copy(png, file = "C:\\Users\\nstewart\\Desktop\\power consumption\\plot3.png")   # create png file

dev.off() # turn off graphics device

# Plot 4

par(mfrow = c(2, 2))  # set up framework for devices (2 by 2 filled by row)

plot(power$datetime,power$Global_active_power,pch=".",xlab="Day of the week, starting 2007-02-01",ylab="Global Active Power",main="Global Active Power versus Day of the Week")
lines(power$datetime,power$Global_active_power)


plot(power$datetime,power$Voltage,pch=".",xlab="Day of the week, starting 2007-02-01",ylab="Voltage",main="Voltage versus Day of the Week")
lines(power$datetime,power$Voltage)

plot(power$datetime,power$Sub_metering_1,pch=".",xlab="Day of the week, starting 2007-02-01",ylab="Sub Metering",main="Sub metering Breakdown (1, 2, or 3)")
lines(power$datetime,power$Sub_metering_1)
lines(power$datetime,power$Sub_metering_2,col="red")
lines(power$datetime,power$Sub_metering_3,col="blue")
legend("top",pch = "_", col=c("black","red","blue"), legend = c("Sub metering 1","Sub metering 2","Sub metering 3"))

plot(power$datetime,power$Global_reactive_power,pch=".",xlab="Day of the week, starting 2007-02-01",ylab="Global Reactive Power")
lines(power$datetime,power$Global_reactive_power)

dev.copy(png, file = "C:\\Users\\nstewart\\Desktop\\power consumption\\plot4.png")   # create png file

dev.off() # turn off graphics device
