# Plotting Assignment-1 related to the course "Exploratory Data Analysis" of Coursera.
rm(list=ls())

#reading data into R (need to download full data in your working directory):
elc<- read.table("./household_power_consumption.txt", sep=";",nrows= 2075260, header=TRUE, quote= "", strip.white=TRUE, stringsAsFactors = FALSE, na.strings= "?")

# Subsetting the full data to obtain the data related to two days:
data<- subset(elc, (elc$Date == "1/2/2007" | elc$Date== "2/2/2007")) 

# Changing the class of Date variable from character to Date:
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Combining the Date and Time variable and creating a new column in dataset named "DateTime":
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))

# Creating the plot2:
png("plot2.png", width=480, height= 480)
plot(data$DateTime, data$Global_active_power, type= "l", lwd=1, ylab= "Global Active Power (kilowatts)", xlab="")
dev.off()