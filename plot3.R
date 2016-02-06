
# check data is in workspace and if not, import it
source("data_groom.R")



# function to draw this plot as we use it again later
plot3 <- function(...){
   #' ... is parameters to pass to legend(), so we can draw it without box
   with(hpc, plot(DateTime, Sub_metering_1, type ="l",
                  xlab = "", ylab = "Energy sub metering"))
   with(hpc, lines(DateTime, Sub_metering_2, col = "red"))
   with(hpc, lines(DateTime, Sub_metering_3, col = "blue"))
   legend("topright", legend = paste0("Sub_metering_", 1:3),
          col = c("black", "red", "blue"),
          lty = rep(1, 3), ...)
}

png("plot3.png", 480, 480)
   plot3()
dev.off()
