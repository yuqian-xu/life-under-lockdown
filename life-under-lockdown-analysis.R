library(dplyr)
library(readr)

lul_d <- read_csv("../data/life-under-lockdown.csv")

lul_d %>%
  mutate(know_facebook = ordered(
    know_facebook,
    levels = c(
      "Nothing at all",
      "Not very much",
      "A fair amount",
      "A great deal"
    ))) %>%
  group_by(know_facebook) %>%
  summarise(n = n(), Beliefs = mean(beliefs))
