download.file("http://www.jaredlander.com/data/ExcelExample.xlsx", destfile='ExcelExample.xlsx', mode='wb')
library(readxl)
tomatoXL <- read_excel("ExcelExample.xlsx", sheet=1)
head(tomatoXL)

wineXL <- read_excel("ExcelExample.xlsx", sheet="Wine")
head(wineXL)

library(openxlsx)
tomatoXL1 <- read.xlsx("ExcelExample.xlsx", sheet=1)
tomatoXL1
head(tomatoXL1)
