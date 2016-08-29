data("diamonds", package="ggplot2")
head(diamonds)

# aggregate function
aggregate(diamonds$price, by=list(diamonds$cut), mean)
aggregate(price ~ cut, diamonds, mean)

# Faster than aggregate
tapply(diamonds$price, diamonds$cut, mean)

# plyr package
require(plyr)
ddply(diamonds, "cut", summarize, Price=mean(price))
daply(diamonds, "cut", summarize, Price=mean(price))

# Parallel - consider the overhead
require(doParallel)
cl <- makeCluster(2)
registerDoParallel(cl)

ddply(diamonds, "cut", function(x) mean(x$price), .parallel = TRUE)

# Incredibly fast data.table in doing aggregate
require(data.table)
diaDt <- data.table(diamonds)
diaDt

diaDt[, mean(price), by=cut]

# dplyr
require(plyr)
require(dplyr)
require(ggplot2)
data(diamonds)
dim(diamonds)
diamonds %>% head

diamonds %>% group_by(cut) %>% dplyr::summarize(Price=mean(price))

# Database for large datasets
download.file("http://www.jaredlander.com/data/diamonds.db", destfile = "diamonds.db", method="curl")
require(RSQLite)
diaDBSource <- src_sqlite("diamonds.db")
diaDB <- tbl(diaDBSource, "diamonds")
diaDB

diaDB %>% group_by(cut) %>% dplyr::summarise(Price=mean(price))
