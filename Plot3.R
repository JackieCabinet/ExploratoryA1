Elec<-read.csv("Electric3.csv")
SubM1<-Elec$Sub_metering_1
SubM2<-Elec$Sub_metering_2
SubM3<-Elec$Sub_metering_3
Days<-c("Thursday","Friday","Saturday")
plot(SubM1, xaxt="n", type= "l", xlab="", ylab= "Energy sub metering")
axis(1, at=c(0,1440.5,2881), labels=Days)
lines(SubM2, col="red")
lines(SubM3, col="blue")
legend(2000,38, box.col="white",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1),lwd=c(2,2,2),col=c("black","red","blue"), text.width=700, cex=.8)