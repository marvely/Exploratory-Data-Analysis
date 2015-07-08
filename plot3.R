#
#
 setwd("~/Documents/Stat/Stat-R/exploratory-data-analysis" )
 epc <- read.table ( file = "household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE,  na.strings = "?" )
 epc.sub <- epc[ which (epc$Date == "1/2/2007" | epc$Date == "2/2/2007"), ] # or is | ????
#
  png(filename = "plot3.png",
    width = 480, height = 480)
 plot( epc.sub$Sub_metering_1, xaxt="n", type = "l", ylab = "Energy sub metering")
 lines( epc.sub$Sub_metering_2, col = "red")
 lines( epc.sub$Sub_metering_3, col = "blue")
 legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1, 1), 
        lwd=c(2.5,2.5, 2.5), col = c("black", "red", "blue"))
 axis( side = 1, at=c(1,1441,2881), labels = c("Thu","Fri","Sat"))
 dev.off()
#