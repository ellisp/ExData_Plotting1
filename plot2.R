
# check data is in workspace and if not, import it
source("data_groom.R")

png("plot2.png", 480, 480)
with(hpc, plot(DateTime, Global_active_power, type ="l",
               xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()