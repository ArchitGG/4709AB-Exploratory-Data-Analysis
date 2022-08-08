library(tidyverse)

#data
Covid_Data <- read.csv("https://raw.githubusercontent.com/ArchitGG/4709AB-Exploratory-Data-Analysis/main/us_state_vaccinations%20(2).csv")

#summary info
summary_info <- list()

#Number of Observations
summary_info$num_observations <- nrow(Coviddata)

#Max Value of People Vaccinated
summary_info$people_vaccinated_max_value <- Coviddata %>%
  filter(people_vaccinated == max(people_vaccinated, na.rm = T)) %>%
  select(people_vaccinated)

#Min Value of People Vaccinated
summary_info$people_vaccinated_min_value <- Coviddata %>%
  filter(people_vaccinated == min(people_vaccinated, na.rm = T)) %>%
  select(people_vaccinated)
##Average Value of People Vaccinated
summary_info$people_vaccinated_avg <- Coviddata %>%
  summarise(mean(people_vaccinated, trim = 0, na.rm = T))

#Max Value of Daily Vaccinations
summary_info$num_features <-ncol(Coviddata)
summary_info$daily_vaccinations_max_value <- Coviddata %>%
  filter(daily_vaccinations == max(daily_vaccinations, na.rm = T)) %>%
  select(daily_vaccinations)

#Average Value of Daily Vaccinations
summary_info$daily_vaccinations_avg <- Coviddata %>%
  summarise(mean(daily_vaccinations, trim = 0, na.rm = T))

print(summary_info)
