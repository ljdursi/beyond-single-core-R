read.airline <- function(fname) {
    data <- read.csv(fname)
    
    # get rid of spurious column 
    data <- data[,-45]

    # clean up the column classes of some columns
    data[,"TAIL_NUM"] <- as.character(data[,"TAIL_NUM"])
    data[,"CANCELLATION_CODE"] <- as.factor(data[,"CANCELLATION_CODE"])
    data[,"CANCELLED"] <- as.logical(data[,"CANCELLED"])
    data[,"FL_DATE"] <- as.Date(data[,"FL_DATE"])

    # for certain delay types, if they are NA, the delay is zero
    delaycols <- c("LATE_AIRCRAFT_DELAY","SECURITY_DELAY","WEATHER_DELAY",
                   "CARRIER_DELAY","NAS_DELAY")
    for (i in delaycols) {
        data[is.na(data[,i]),i] <- 0
    }

    data
}
