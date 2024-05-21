library(tidyverse)
d <- read_csv("https://tinyurl.com/gapcsv")
write_csv(d, "data/gapminder.csv")

