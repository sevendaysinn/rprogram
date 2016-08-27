sport <- c('hockey','baseball','football')
league <- c('NHL', 'MLB', 'NFL')
trophy <- c('Stanley Cup', "Comissioner's Trophy", "Vince Lombardi Trophy")

sports1 <- cbind(sport, league, trophy)
sports1
sports2 <- data.frame(sport=c("Basketball", "Golf"),
                      league=c("NBA", "PGA"),
                      trophy=c("Larry O'Brien Championship Trophy", "Wanamaker Trophy"))
sports2
sports <- rbind(sports1, sports2)
sports
