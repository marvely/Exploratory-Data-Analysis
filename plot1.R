
 setwd("~/Documents/Stat/Stat-R/exploratory-data-analysis" )
 epc <- read.table ( file = "household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE,  na.strings = "?" )
 epc.sub <- epc[ which (epc$Date == "1/2/2007" | epc$Date == "2/2/2007"), ] # or is | ????
#
#
 par(mfrow = c(1, 1))
 png(filename = "plot1.png",
    width = 480, height = 480)

 hist(epc.sub$Global_active_power, main = "Global Active Power", col = "red", xlim = c(0, 6),  ylim = c(0, 1200), xlab = "Global Active Power (kilowatts)")
 dev.off() 

#