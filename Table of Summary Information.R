library(readr)
CovidData <- read_csv("C:/Users/ArchitGG/Desktop/us_state_vaccinations.csv")
View(CovidData)

library(dplyr)

CovidData %>%
group_by(people_vaccinated) %>%
  summarize(freq = n())
arrange(desc(freq))

CovidData %>%
  group_by(total_vaccinations) %>%
  summarize(freq = n())
arrange(desc(freq))

CovidData %>%
  group_by(people_fully_vaccinated) %>%
  summarize(freq = n())
arrange(desc(freq))

CovidData %>%
  group_by(daily_vaccinations) %>%
  summarize(freq = n())
arrange(desc(freq))

CovidData %>%
  group_by(total_boosters) %>%
  summarize(freq = n())
arrange(desc(freq))

