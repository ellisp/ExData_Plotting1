# download, import and groom data

#-----------basic functionality--------
library(dplyr)

#------------download------------------
if(!"household_power_consumption.txt" %in% list.files()){
   download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                 destfile = "household_power_consumption.zip", mode = "wb")
   unzip("household_power_consumption.zip")
}


#------------import------------------
# data is colon separate values ie delimited by ; 
if(!exists("hpc_orig")){
   hpc_orig <- read.table("household_power_consumption.txt", header = TRUE, nrows = -1, sep = ";",
                  stringsAsFactors = FALSE, na.strings = "?")
}
   
if(nrow(hpc_orig) != 2075259){
   stop("Something went wrong with data import")
}


#--------------filter and tidy up-----------
hpc <- hpc_orig %>%  
   mutate(Date2 = as.Date(Date, format = "%d/%m/%Y")) %>%
   filter(Date %in% c("2/2/2007", "1/2/2007"))
hpc$DateTime <- with(hpc, strptime(paste(Date, Time), format = "%d/%m/%Y %X"))

