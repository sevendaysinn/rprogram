require(ggplot2)
data(diamonds)
head(diamonds)

hist(diamonds$carat)
hist(diamonds$carat, main="Carat Histogram", xlab="carat")

plot(diamonds$carat, diamonds$price)
plot(price ~ carat, data=diamonds)
plot(price ~ carat, data=diamonds, main="Price vs Carat")

boxplot(diamonds$carat)
ggplot(data)
geom_point
geom_line
geom_histogram
aes(x, y)

ggplot(data) + geom_point(aes(x, y))