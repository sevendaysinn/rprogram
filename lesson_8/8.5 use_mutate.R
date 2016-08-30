data(diamonds, package='ggplot2')
head(diamonds)
class(diamonds)
library(dplyr)

dia <- as.tbl(diamonds)

dia %>% mutate(price/carat)
dia %>% mutate(ratio=price/carat)
dia

library(magrittr)
dia %<>% mutate(ratio=price/carat)
dia

dia %>% mutate(TotalSize=x+y+z, TwiceSize=TotalSize*2)
