Exploratory Data Analysis-part 1


The object of this assignment was to reproduce plots provided. Our overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007. The task is to reconstruct certain given plots, all of which were constructed using the base plotting system.


Base Plotting System


data_full <- read.csv("/home/shweta/Documents/household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)


with(data1, {
  plot(Global_active_power~Datetime, type="l",
         ylab="Global Active Power (kilowatts)", xlab="")
  })
	 
dev.copy(png, file="plot2.png", height=480, width=480)
	

## png 3


dev.off()
	

## png
##   2