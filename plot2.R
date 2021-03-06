#Assume data is in working directory
#Data is from UC Irving Machine Learning Repository
#Data can be downloaded at https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

housedata<-read.table('household_power_consumption.txt', header=TRUE, sep=';', na.strings='?')
housedata2<-subset(housedata, (Date=='1/2/2007' | Date=='2/2/2007'))

datetime<-as.POSIXct(strptime(paste(housedata2$Date, housedata2$Time), '%d/%m/%Y %H:%M:%S'))
#combine date and time columns into one time object to be used for x axis

png('plot2.png')
plot(datetime, housedata2$Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)')

dev.off()