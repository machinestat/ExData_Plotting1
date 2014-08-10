plot(dat$datetime, dat$Sub_metering_1, type = "l",
  ylab = "Energy sub metering", xlab = "")
axis(side = 1, at = c(1, nrow(dat)/2 + 1, nrow(dat)), 
  labels = c("Thu", "Fri", "Sat"))
lines(dat$datetime, dat$Sub_metering_2, col = "red")
lines(dat$datetime, dat$Sub_metering_3, col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"),
  legend = c("Sub_metering_1", "Sub_metering_2", 
    "Sub_metering_3"), cex = 0.8)
dev.copy(png, file = "plot3.png", width = 480,
  height = 480, units = "px")
dev.off()