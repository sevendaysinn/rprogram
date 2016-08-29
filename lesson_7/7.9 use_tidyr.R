library(tidyr)
library(magrittr)

head(airquality)

airGather <- airquality %>% gather(Metric, Value, -c(Month, Day))
head(airGather)
tail(airGather)

airSpread <- airGather %>% spread(Metric, Value)
head(airSpread)
