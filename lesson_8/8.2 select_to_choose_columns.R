data(diamonds, package='ggplot2')
head(diamonds)
class(diamonds)
library(dplyr)

dia <- as.tbl(diamonds)
dia
class(dia)

dia[, c('carat', 'price')]

# Built-in select
dia %>% select(carat, price)
dia %>% select_('carat', 'price')
dia %>% select(1, 7)
dia %>% select(-c(1,7))
dia %>% select(-carat, -price)
