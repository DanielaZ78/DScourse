library(tidyverse)
d <- read_csv("data/gapminder.csv")

d|> 
  dplyr::filter(year == 2007) |>
ggplot() + 
  geom_point(aes(x = gdpPercap, y = lifeExp)) + scale_x_log10()

ggsave(filename = "figs/lifeExp_vs_gdpPercap_2007.pdf")

d|> 
  dplyr::filter(year == 1952) |>
  ggplot() + 
  geom_point(aes(x = gdpPercap, y = lifeExp)) 

d|> 
  dplyr::filter(year == 1952)
  
outlier_country <- d
  arrange(desc(gdpPercap)) |>
    slice(1)
  
print(outlier_country)

d|> 
  dplyr::filter(year == 2007) |>
  ggplot() + 
  geom_point(aes(x = gdpPercap, y = lifeExp, size = pop, colour = continent)) + scale_x_log10()

d|> 
  dplyr::filter(year == 1952) |>
  ggplot() + 
  geom_point(aes(x = gdpPercap, y = lifeExp, size = pop, colour = continent)) 
