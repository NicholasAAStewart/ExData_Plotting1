dts<-ymd_hms(paste(power$Date,power$Time))
power$datetime<-dts
plot(power$datetime,power$Global_active_power,pch=".",xlab="Day of the week, starting 2007-02-01",ylab="Global Active Power",main="Plot2 Global Active Power versus Day of the Week")
lines(power$datetime,power$Global_active_power)

dev.copy(png, file = "C:\\Users\\nstewart\\Desktop\\power consumption\\plot2.png")   # create png file

dev.off() # turn off graphics device
