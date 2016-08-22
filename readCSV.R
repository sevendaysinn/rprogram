"http://www.jaredlander.com/data/Tomato%20First.csv"
tomato <- read.table(file="http://www.jaredlander.com/data/Tomato%20First.csv", stringsAsFactors=FALSE, header=TRUE, sep=",")
head(tomato)
class(tomato$Tomato)
sep="\t"

read.csv2