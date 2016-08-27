require(devtools)
install_github("rCharts", "ramnathv")

require(rCharts)
head(iris)
names(iris) <- gsub("\\.", "", names(iris))
head(iris)

rPlot(SepalLength ~ SepalWidth | Species, color="Species", type="point", data=iris)

hairEye <- as.data.frame(HairEyeColor)
head(hairEye)
rPlot(Freq ~ Hair | Eye, color="Eye", type="bar", data=hairEye)

data(economics, package = "ggplot2")
head(economics)
tail(economics)
economics$date <- as.character(economics$date)
head(economics)
m1 <- mPlot(x="date", y=c("psavert", "uempmed"), type="Line", data=economics)
m1
m1$set(pointSize=0, linewidth=1)
m1

map1 <- Leaflet$new()
map1$setView(c(51.505, -.09), zoom=13)
map1

require(rjson)
require(plyr)
pizzaJson <- fromJSON(file="http://www.jaredlander.com/data/PizzaPollData.php")
pizzaJson
pizza <- ldply(pizzaJson, as.data.frame)

head(pizza)
