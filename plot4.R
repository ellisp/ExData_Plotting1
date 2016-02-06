
# redraw plot3 so we have the function that draws it.  This also downloads data if necessary
source("plot3.R")

png("plot4.png", 480, 480)

par(mfrow = c(2, 2))

with(hpc, plot(DateTime, Global_active_power, type ="l",
               xlab = "", ylab = "Global Active Power")) # have truncated the ylab to exactly match the question

with(hpc, plot(DateTime, Voltage, type = "l", xlab = "datetime"))

plot3(bty = "n")

with(hpc, plot(DateTime, Global_reactive_power, type = "l",
               xlab = "datetime"))


dev.off()



