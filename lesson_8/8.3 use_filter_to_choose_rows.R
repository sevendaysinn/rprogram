data(diamonds, package='ggplot2')
head(diamonds)
class(diamonds)
library(dplyr)

dia <- as.tbl(diamonds)
dia[dia$cut == 'Ideal',]

dia %>% filter(cut=='Ideal')
dia %>% filter(cut == 'Ideal', color == "E")
dia %>% filter(cut == 'Ideal' & color == 'E')

dia %>% filter(cut == 'Ideal' | cut == "Premium")
dia %>% filter(cut %in% c('Ideal', 'Premium'))

dia %>% filter_("cut=='Ideal'")
dia %>% filter_(~cut=='Ideal')
