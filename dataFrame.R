x <- 10:1
y <- -4:5
q <- c("Hockey", "Soccer", "Cricket", "Tennis", "Swimming", "Basketball", "Lacrosse", "Baseball", "Diving", "Fencing")
length(q)
class(q)

theDF <- data.frame(First=x, Second=y, Sport=q, stringsAsFactors = FALSE)

class(theDF$Sport)

nrow(theDF)
ncol(theDF)
dim(theDF)
theDF
NROW(theDF)
nrow(x)

head(theDF)
NROW(x)


names(theDF)
names(theDF)[3]
rownames(theDF)


head(theDF, n=7)
rownames(theDF) <- c("One", "TWO")
tail(theDF, n=6)


theDF$Sport
theDF
theDF[3,2]
theDF[3, 2:3]


theDF[c(3,5), 1:2]
theDF[,3]
theDF[,3, drop=FALSE]


theDF[2, ]

theDF[, c("First", "Sport")]
theDF[, c("Sport", "First")]
theDF[, "Sport", drop=FALSE]
theDF[["Sport"]]
theDF[c("First", "Sport")]
