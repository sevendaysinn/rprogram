data(diamonds, package='ggplot2')
head(diamonds)
class(diamonds)
library(dplyr)

dia <- as.tbl(diamonds)
dia
class(dia)
