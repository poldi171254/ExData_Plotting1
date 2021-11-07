# the following creates the plotdata data frame from the csv file
source("getdata.R")

#print(summary(plotdata))

hist(plotdata$Global_active_power,xlab = "Global Active Power (kilowatts)", 
     ylab = "Freequency", col = "red", main="Global Active Power")

# copy plot to png
dev.copy(png,"plot1.png")
dev.off()
