mydata <- read.csv("gapminder_gdp_americas.csv")

mydata

myresult <- sapply(mydata[, 2:13], FUN = mean, na.rm = TRUE)

myresult

year <- c("1952","1957", "1962", "1967", "1972", "1977","1982", "1987", "1992", "1997", "2002", "2007" )

gdpPercap <- c(1252.572, 1385.236, 1598.079, 2050.364, 2339.616, 2585.939, 2481.593, 2282.669, 2281.810, 2378.760, 2599.385, 3089.033 )


gdp_year <- data.frame(year, gdpPercap)


library(ggplot2)

plot <- ggplot(data = gdp_year, aes(x=year, y=gdpPercap))


plot + geom_bar(stat = "identity")
