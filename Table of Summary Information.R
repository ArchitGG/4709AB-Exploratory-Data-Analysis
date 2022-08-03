library(readr)
CovidData <- read_csv("C:/Users/ArchitGG/Desktop/us_state_vaccinations.csv")
View(CovidData)

library(dplyr)

na.omit(
CovidData %>%
rename(Location = "location") %>%
group_by(Location) %>%
summarize(total_vaccinations, people_vaccinated, people_fully_vaccinated, daily_vaccinations, total_boosters))

data_round <- CovidData %>%
  mutate_if(is.numeric,
            round,
            digits = 5)
View(data_round2)

table_1 <- table(CovidData$total_vaccinations, CovidData$people_fully_vaccinated)

table(CovidData$total_vaccinations, CovidData$people_fully_vaccinated)

