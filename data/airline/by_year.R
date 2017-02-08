mergeData <- function(filelist, outfilebase) {
    datasets <- lapply(filelist, read.airline)
    data <- Reduce(rbind, datasets)
    saveRDS(data,file=paste0(outfilebase,".RDS'")
}

source("read_airline.R")
for (year in c( 1988:2009, 2011:2012 ) ) {
    yearstr <- as.character(year)

    filebase <- paste0("airOT", yearstr)
    varbase <- paste0("air", yearstr)
    filepattern <- paste0(filebase,"*.csv")
    files <- Sys.glob(filepattern)

    mergeData(files, filebase)
}
