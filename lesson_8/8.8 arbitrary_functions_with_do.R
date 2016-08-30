topN <- function(x, N=5)
{
  x %>% arrange(desc(price)) %>% slice(1:N)
}

topN(dia)
dia %>% do(topN(.))
dia %>% do(topN(., N=7))
dia %>% group_by(cut) %>% do(topN(., N=2))
dia %>% group_by(cut) %>% arrange(desc(price)) %>% slice(1:2)

dia %>% group_by(cut) %>% do(This=topN(., N=2))
models <- dia %>% group_by(cut) %>% do(Model=lm(price ~ carat, data = .))
models
class(models)
class(models$cut)
class(models$Model)
class(models$Model[[1]])
models$Model[[1]]
summary(models$Model[[1]])
