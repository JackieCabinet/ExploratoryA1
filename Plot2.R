Elec<-read.csv("Electric3.csv")
GlobActPow<-Elec$Global_active_power
Days<-c("Thursday","Friday","Saturday")
plot(GlobActPow, xaxt="n", type= "l", xlab="", ylab= "Global Active Power (kilowatts)")
axis(1, at=c(0,1440.5,2881), labels=Days)
