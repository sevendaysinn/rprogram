ifelse(1==1, "yes", "no")
ifelse(1==0, "yes", "no")

toTest <- c(1,1,0,1,0,1)
ifelse(toTest==1, "yes", "no")
ifelse(toTest==1, toTest*3, toTest)
toTest
ifelse(toTest==1, toTest*2, "Zero")

toTest[2] <- NA
toTest
ifelse(toTest==1, toTest*3, "zero")
