# dply and tidyr
library(tidyverse)

interviews <- read_csv("data/SAFI_clean.csv", na ="NULL")


select(interviews, village, no_membrs, years_liv)
select(interviews, village:rooms)


# filtering
filter(interviews, village == "God")
filter(interviews, 1:nrow(interviews) %in% 1:10)

interviews2 <- filter(interviews, village =="God")
interviews_god <- select(interviews2, no_membrs, years_liv)


interviews_god <- select(filter(interviews, village == "God"), no_membrs, years_liv)

interviews %>% filter(village == "God") %>% select(no_membrs, years_liv)


# mutate

interviews <- interviews %>% mutate (peope_per_room = no_membrs/rooms)

mean (interviews$no_membrs)

interviews %>% group_by(village) %>%
  filter (memb_assoc == "yes") %>%
  summarize (mean_no_membrs = mean(no_membrs))
