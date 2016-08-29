list1 <- list(1,2,3)
list1
list2 <- list(c(1,2,3))
list2
list3 <- list(c(1,2,3), 3:7)
list3


theDF <- data.frame(First=1:5, Second=5:1, Sport=c("Hockey", "Lacrosse", "Curling", 
                                                   "Football", "Tennis"), stringsAsFactors = FALSE)

theDF

list4 <- list(theDF, 1:10)
list4

list5 <- list(theDF, 1:10, list3)
list5


names(list5)
names(list5) <- c("data.frame", "vector", "list")
names(list5)


list5


list6 <- list(TheDataFrame=theDF, TheVector=1:10, TheList=list3)
list6


emptyList <- vector(mode="list", length = 4)
emptyList


emptyList[[1]] <- 5
emptyList

list5[[1]]
names(list5)
list5[["data.frame"]]
list5[[1]]$Sport
list5[[1]][,"Second"]
length(list5)
NROW(list5)


list5[[4]] <- 2
list5
list5[["NewElement"]] <- 3:6
length(list5)
names(list5)
