library(tidyr)
library(lubridate)
library(dplyr)

# read csv file
alldata<-read.csv("~/RProjects/ExploratoryDataAnalysis/household_power_consumption.txt",
                    header = TRUE, sep = ";", na.strings = c("?"),
                    stringsAsFactors = FALSE, quote = '\"')


# select the required date range "February 1 and 2, 2007
datasubset1 <- subset(alldata, Date %in% c("1/2/2007","2/2/2007"))

datasubset1$Date <- as.Date(datasubset1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(datasubset1$Date), data1$Time)
datasubset1$DateTime <- as.POSIXct(datetime)

plotdata<-datasubset1


