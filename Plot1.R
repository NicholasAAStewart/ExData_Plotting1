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
