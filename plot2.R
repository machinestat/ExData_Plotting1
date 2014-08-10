dat$Weekday <- factor(weekdays(dat$Date))
str(dat)
plot(dat$datetime, dat$Global_active_power, type = "l",
  ylab = "Global Active Power (kilowatt)", xlab = "")
axis(side = 1, at = c(1, nrow(dat)/2 + 1, nrow(dat)), 
  labels = c("Thu", "Fri", "Sat"))
dev.copy(png, file = "plot2.png", width = 480,
  height = 480, units = "px")
dev.off()
