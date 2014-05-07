# Plotting Assignment-1 related to the course "Exploratory Data Analysis" of Coursera.
rm(list=ls())

#reading data into R (need to download full data in your working directory):
elc<- read.table("./household_power_consumption.txt", sep=";",nrows= 2075260, header=TRUE, quote= "", strip.white=TRUE, stringsAsFactors = FALSE, na.strings= "?")

# Subsetting the full data to obtain the data related to two days:
data<- subset(elc, (elc$Date == "1/2/2007" | elc$Date== "2/2/2007")) 

# creating plot1

png("plot1.png", width=480, height= 480)
hist(data$Global_active_power, col= "red", xlab= "Global Active Power (kilowatts)", ylab= "Frequency", main= "Global Active Power")
dev.off()