theList <- list(A=matrix(1:9, nrow=3), B=1:5, C=matrix(1:4, 2), D=2)
theList
lapply(theList, sum)
sapply(theList, sum)

theNames <- c('Steve', 'Tony', 'Thor')
lapply(theNames, nchar)
