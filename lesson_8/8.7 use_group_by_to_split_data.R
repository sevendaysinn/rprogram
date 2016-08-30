data(diamonds, package='ggplot2')
head(diamonds)
class(diamonds)
library(dplyr)

dia <- as.tbl(diamonds)
dia %>% group_by(cut) %>% summarise(AvgPrice=mean(price))
dia %>% group_by(cut, color) %>% summarise(AvgPrice=mean(price))
dia %>% group_by(cut) %>% summarise(AvgPrice=mean(price), AvgCarat=mean(carat), TotalCarat=sum(carat))
