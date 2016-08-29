ggplot(data=diamonds) + geom_histogram(aes(x=carat))
ggplot(data=diamonds) + geom_histogram(aes(x=carat), binwidth = 0.5)
ggplot(data=diamonds) + geom_histogram(aes(x=carat), binwidth = 0.1)

ggplot(data=diamonds) + geom_density(aes(x=carat))
ggplot(data=diamonds) + geom_density(aes(x=carat), fill="grey50")

ggplot(diamonds, aes(x=carat, y=price)) + geom_point()
g <- ggplot(diamonds, aes(x=carat, y=price))
g
g + geom_point()
g + geom_point(aes(color=color))
g + geom_point(aes(color=color, shape=clarity))
g + geom_point(aes(color=color, shape=cut))
