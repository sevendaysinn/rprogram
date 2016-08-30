paste('hello', "steve", 'and others')
paste('hello', "steve", 'and others', sep='/')

paste(c("hello", "hey", "howdy"), c("steve", "tony", "thor"))
paste(c("hello"), c("steve", "tony", "thor"))
paste("hello", c("steve", "tony", "thor"), c('goodbye', "seeya"))

vectorOfText <- c("hello", "everyone", "out there", ".")
paste(vectorOfText, collapse=" ")

person <- 'steve'
partySize <- 8
waitTime <- 25
paste("Hello ", person, ", your party of ", partySize, " will be seated in ", waitTime, " minutes.", sep="")

sprintf("Hello %s, your party of %s will be seated in %s minutes.", person, partySize, waitTime)
