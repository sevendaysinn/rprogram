data(diamonds, package='ggplot2')
head(diamonds)
class(diamonds)
library(dplyr)

dia <- as.tbl(diamonds)
dia
dia %>% slice(1:5)
dia %>% slice(1:10)
dia %>% slice(c(1,3,5:10))
