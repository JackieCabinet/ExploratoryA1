par(mfrow=c(2,2))
Elec<-read.csv("Electric3.csv")
GlobActPow<-Elec$Global_active_power
Days<-c("Thursday","Friday","Saturday")
plot(GlobActPow, xaxt="n", type= "l", xlab="", ylab= "Global Active Power (kilowatts)")
axis(1, at=c(0,1440.5,2881), labels=Days)
Voltage<-Elec$Voltage
plot(Voltage, xaxt="n", type= "l", xlab="datetime", ylab= "Voltage")
axis(1, at=c(0,1440.5,2881), labels=Days)
SubM1<-Elec$Sub_metering_1
SubM2<-Elec$Sub_metering_2
SubM3<-Elec$Sub_metering_3
Days<-c("Thursday","Friday","Saturday")
plot(SubM1, xaxt="n", type= "l", xlab="", ylab= "Energy sub metering")
axis(1, at=c(0,1440.5,2881), labels=Days)
lines(SubM2, col="red")
lines(SubM3, col="blue")
legend(2000,39, box.col="white",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1),lwd=c(2,2,2),col=c("black","red","blue"), text.width=700, cex=.5)
Reactive<-Elec$Gloval_reactive_power
plot(Reactive, xaxt="n", type= "l", xlab="datetime", ylab= "Global_reactive_power")
axis(1, at=c(0,1440.5,2881), labels=Days)