library(tidyverse)
d <- read_csv("data/gapminder.csv")

d|> 
  dplyr::filter(year == 2007) |>
ggplot() + 
  geom_point(aes(x = gdpPercap, y = lifeExp)) + scale_x_log10()

ggsave(filename = "figs/lifeExp_vs_gdpPercap_2007.pdf")



