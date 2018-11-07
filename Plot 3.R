# Plot 3

plot(power$datetime,power$Sub_metering_1,pch=".",xlab="Day of the week, starting 2007-02-01",ylab="Sub Metering",main="Plot 3: Sub metering Breakdown (1, 2, or 3)")
lines(power$datetime,power$Sub_metering_1)
lines(power$datetime,power$Sub_metering_2,col="red")
lines(power$datetime,power$Sub_metering_3,col="blue")
legend("top",pch = "_", col=c("black","red","blue"), legend = c("Sub metering 1","Sub metering 2","Sub metering 3"))

dev.copy(png, file = "C:\\Users\\nstewart\\Desktop\\power consumption\\plot3.png")   # create png file

dev.off() # turn off graphics device
