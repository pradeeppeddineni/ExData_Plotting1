## Generating Plot 4
par(mfrow = c(2,2))
with(d, {
          plot(Global_active_power ~ Datetime, type = "l", 
               ylab = "Global Active Power", xlab = "")
          plot(Voltage ~ Datetime, type = "l", ylab = "Voltage", xlab = "datetime")
          plot(Sub_metering_1 ~ Datetime, type = "l", ylab = "Energy sub metering",
               xlab = "")
          lines(Sub_metering_2 ~ Datetime, col = 'Red')
          lines(Sub_metering_3 ~ Datetime, col = 'Blue')
          legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
                 bty="n",col=c("black","red","blue"),lwd=2,cex=0.4)
          plot(Global_reactive_power ~ Datetime, type = "l", 
               ylab = "Global_reactive_power", xlab = "datetime")
})
