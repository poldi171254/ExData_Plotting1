# the following creates the plotdata data frame from the csv file
source("getdata.R")

with(plotdata, {
  plot(Global_active_power~DateTime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})

# copy plot to png
dev.copy(png,"plot2.png")
dev.off()

