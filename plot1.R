#Assume data is in working directory
#Data is from UC Irving Machine Learning Repository
#Data can be downloaded at https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

housedata<-read.table('household_power_consumption.txt', header=TRUE, sep=';', na.strings='?')
housedata2<-subset(housedata, (Date=='1/2/2007' | Date=='2/2/2007'))

#plot1
png('plot1.png') #default dimensions are 480x480
hist(housedata2$Global_active_power, col='red', main='Global Active Power', xlab='Global Active Power (kilowatts)')
dev.off()

