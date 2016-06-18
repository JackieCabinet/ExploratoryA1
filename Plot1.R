Elec<-read.csv("Electric3.csv")
GlobActPow<-Elec$Global_active_power
hist(GlobActPow, col= "Red", main= "Global Active Power", xlab= "Global Active Power (kilowatts)")
