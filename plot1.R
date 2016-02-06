
# check data is in workspace and if not, import it
source("data_groom.R")

png("plot1.png", 480, 480)
hist(hpc$Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")
dev.off()