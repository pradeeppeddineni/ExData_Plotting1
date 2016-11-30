##read full data set.

d_f <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')

##Convert the date format.

d_f$Date <- as.Date(d_f$Date, format = "%d/%m/%Y")

## Subset the data
d <- subset(d_f, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(d_f)

## Converting dates
datetime <- paste(as.Date(d$Date), d$Time)
d$Datetime <- as.POSIXct(datetime)

## Generating Plot 2
plot(d$Global_active_power ~ d$Datetime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")
