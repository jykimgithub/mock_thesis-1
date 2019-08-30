setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
install.packages("pacman")
pacman::p_load(tidyverse)

data <- read_csv("data.csv")

filter(data, GEO %in% c("Alberta","Prince Edward Island")) %>%
  ggplot(aes(x = Date, y = as.numeric(Value))) +
  geom_line(aes(color = GEO)) +
  labs(x = "Year", y = "Household income per capita") +
  theme_bw() 