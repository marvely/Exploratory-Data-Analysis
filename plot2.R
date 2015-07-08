#
 setwd("~/Documents/Stat/Stat-R/exploratory-data-analysis" )
 epc <- read.table ( file = "household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE,  na.strings = "?" )
 epc.sub <- epc[ which (epc$Date == "1/2/2007" | epc$Date == "2/2/2007"), ] # or is | ????
#
#
 epc.sub$Date <- as.Date(epc.sub$Date, format = "%d/%m/%Y")
 png(filename = "plot2.png",
    width = 480, height = 480)
 plot(epc.sub$Global_active_power, xaxt="n", type = "l", ylab = "Global Active Power (killowatts)")
 axis( side = 1, at=c(1,1441,2881), labels = c("Thu","Fri","Sat"))
 dev.off()