library(readr)
CovidData <- read_csv("C:/Users/ArchitGG/Desktop/us_state_vaccinations.csv")
View(CovidData)

library(dplyr)
library(tidyselect)

na.omit(summary_table <- CovidData %>%
  rename(Location = location) %>%
  group_by(Location) %>%
  summarize(total_vaccinations, people_vaccinated, people_fully_vaccinated, daily_vaccinations, total_boosters))

table_1 <- table(CovidData$total_vaccinations, CovidData$people_fully_vaccinated)

table(CovidData$total_vaccinations, CovidData$people_fully_vaccinated)


