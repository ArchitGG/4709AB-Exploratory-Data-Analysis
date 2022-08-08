library(readr)
library(tidyverse)

#Data
Covid_Data <- read_csv("https://raw.githubusercontent.com/ArchitGG/4709AB-Exploratory-Data-Analysis/main/us_state_vaccinations%20(2).csv")
View(Covid_Data)

#table for COVID Vaccinations
na.omit(summary_table <- CovidData %>%
          rename(Location = location) %>%
          group_by(Location) %>%
          summarize(total_vaccinations, people_vaccinated, people_fully_vaccinated, daily_vaccinations, total_boosters))

table_1 <- table(CovidData$total_vaccinations, CovidData$people_fully_vaccinated)

table(CovidData$total_vaccinations, CovidData$people_fully_vaccinated)