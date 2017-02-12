ideal.gas.fixedV <- function(presrange, nrange, vrange, tnoiseamp, tnoisesd) {
  gas.const <- 8.3144621
  
  npres <- length(presrange)
  nn <- length(nrange)
  nv <- length(vrange)
  
  pres <- rep(presrange,nn*nv)
  n    <- rep(nrange,each=npres*nv)
  vol  <- rep(vrange,nn,each=npres)
  
  temp <- pres*vol/(n*gas.const) + tnoiseamp*rnorm(nn*nv*npres,sd=tnoisesd)

  data <- data.frame(pres,vol,n,temp)   
}


ideal.gas.fixedT <- function(presrange, nrange, trange, vnoiseamp, vnoisesd) {
  gas.const <- 8.3144621
  
  npres <- length(presrange)
  nn <- length(nrange)
  nt <- length(trange)
  
  pres <- rep(presrange,nn*nt)
  n    <- rep(nrange,each=npres*nt)
  temp <- rep(trange,nn,each=npres)
  
  vol <- (n*gas.const*temp)/pres + vnoiseamp*rnorm(nn*nt*npres,sd=vnoisesd)
  
  data <- data.frame(pres,vol,n,temp)   
}

plarge <- seq(90000, 110000, length.out=5000)
tlarge <- seq(280, 320, length.out=41)
nlarge <- seq(.5, 2., length.out=16)

#large <- ideal.gas.fixedT(plarge, nlarge, tlarge, 0.1, 0.1)
#write.csv(large, "ideal-gas-fixedT-large.csv",row.names=FALSE)
library(bigmemory)
data <- read.big.matrix("ideal-gas-fixedT-large.csv", header=TRUE,  
                         backingfile="ideal-gas-fixedT-large.bin", 
                         descriptorfile="ideal-gas-fixedT-large.desc")
