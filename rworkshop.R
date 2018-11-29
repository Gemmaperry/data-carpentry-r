library(tidyverse)
interviews <- read_csv("data/SAFI_clean.csv")
tail(interviews)



# create a data frame (interviews_last) from the last row. 
interview_last <- interviews[nrow(interviews), ]


n_row = nrow(interviews)
n_row




respondent_floor_type = factor(c("earth", "cement", "cement", "earth"))
levels(respondent_floor_type)

# to find out how many levels there are 
nlevels(respondent_floor_type)





interviews$affect

affect_conflicts = interviews$affect_conflicts




affect_conflicts = factor(affect_conflicts)
affect_conflicts

# making a graph

plot(affect_conflicts)

interviews <- read.csv("data/SAFI_clean.csv", na = "NULL" )



affect_conflicts <-interviews$affect_conflicts
affect_conflicts [is.na(affect_conflicts)] <- "undetermined"

affect_conflicts <- facto

# gives overview of variables
str(interviews)

library(lubridate)


interviews <- read.csv("data/SAFI_clean.csv")





dates <- interviews$interview_date
head(dates)












# diply and tidyr

dates <- ymd_hms(dates)
str(dates)
