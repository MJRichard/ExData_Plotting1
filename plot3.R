housedata<-read.table('household_power_consumption.txt', header=TRUE, sep=';', na.strings='?')
housedata2<-subset(housedata, (Date=='1/2/2007' | Date=='2/2/2007'))

datetime<-as.POSIXct(strptime(paste(housedata2$Date, housedata2$Time), '%d/%m/%Y %H:%M:%S'))
#combine date and time columns into one time object to be used for x axis

png('plot3.png')

plot(datetime, housedata2$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(datetime, housedata2$Sub_metering_2, col='red')
lines(datetime, housedata2$Sub_metering_3, col='blue')
legend('topright', legend= c('Sub_metering_1', 'Sub_metering_2','Sub_metering_3'), col=c('black','red','blue'), lty=c(1,1,1))

dev.off()