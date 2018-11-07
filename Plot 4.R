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
