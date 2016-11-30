##plot3 

with(d, {
          plot(Sub_metering_1 ~ Datetime, type = "l", 
               ylab = "Global Active Power (kilowatts)", xlab = "")
          lines(Sub_metering_2 ~ Datetime, col = 'Red')
          lines(Sub_metering_3 ~ Datetime, col = 'Blue')
})
##start device 'png'

png("PNG/plot3.png")

##legend 
##adding cex value makes the box small in the topright corner.

legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="l",
       col=c("black","red","blue"),lwd=2,cex=0.7)


##stop device
dev.off()
