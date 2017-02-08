read.reverse <- function(file) {
    ticker <- sub(".csv","",file)
    data <- read.csv(file)
    data <- lapply(data, rev)
    names(data) <- c("date",ticker)
    as.data.frame(data)
}

files <- Sys.glob("*.csv")
frames <- lapply(files, read.reverse)
nframes <- length(frames)
allframes <- frames[[1]]
for ( i in 2:nframes ) {
    allframes <- merge(allframes, frames[[i]], by="date", all=TRUE)
}

write.csv(allframes, file="stocks.csv")
