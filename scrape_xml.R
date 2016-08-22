require(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowl <- readHTMLTable(theURL, which=1, header=FALSE, stringsAsFactors=FALSE)
bowl

address <- "http://www.menupages.com/restaurants/fiores-pizza/menu"
thePage <- readLines(address)
head(thePage)
pageRender <- htmlParse(thePage)

address <- xpathApply(pageRender, "//li[@class='address adr']/span[@class='addr street-address']", 
                      fun=xmlValue)[[1]]
address

city <- xpathApply(pageRender, "//li[@class='address adr']/span/span[@class='locality']",
                   fun=xmlValue)[[1]]
city

headers <- xpathSApply(pageRender, "//*[@id='restaurant-menu']/h3", fun=xmlValue)
headers

items <- xpathSApply(pageRender, "//table[starts-with(@class, '')]")
items

items <- lapply(items, readHTMLTable, stringsAsFactors=FALSE)
items

require(plyr)
menu <- "http://www.menupages.com/restaurants/all-areas/all-neighborhoods/pizza/"
doc <- htmlParse(menu)
placeNameLink <- xpathApply(doc, "//table/tbody/tr/td[@class='name-address sorting_2']/a[@class='link search_result_link']",
                            fun=function(x){ c(Name=xmlValue(x, recursive=FALSE),
                                               Link=xmlAttrs(x)[2]) })
placeNameLink
placeNameLink <- ldply(placeNameLink)
head(placeNameLink)


teaFile <- "http://www.jaredlander.com/data/SocialComments.xml"
teaParsed <- xmlToList(teaFile)
length(teaParsed)
teaParsed
str(teaParsed)
teaParsed[[1]][[1]]$id
teaParsed[[1]][[1]]$author$name
teaParsed[[1]][[1]]$published
teaParsed[[1]][[1]]$content$.attrs
teaParsed[[1]][[1]]$content$.attrs[["sentimentScore"]]
