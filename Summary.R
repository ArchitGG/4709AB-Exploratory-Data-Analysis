Coviddata <- read.csv("D:/us_state_vaccinations.csv")
View(Coviddata)

summary(Coviddata)

summary_info <- list()
summary_info$num_observations <- nrow(Coviddata)
summary_info$people_vaccinated_max_value <- Coviddata %>%
  filter(people_vaccinated == max(people_vaccinated, na.rm = T)) %>%
  select(people_vaccinated)
summary_info$people_vaccinated_min_value <- Coviddata %>%
  filter(people_vaccinated == min(people_vaccinated, na.rm = T)) %>%
  select(people_vaccinated)
summary_info$people_vaccinated_avg <- Coviddata %>%
  summarise(mean(people_vaccinated, trim = 0, na.rm = T))
summary_info$num_features <-ncol(Coviddata)
summary_info$daily_vaccinations_max_value <- Coviddata %>%
  filter(daily_vaccinations == max(daily_vaccinations, na.rm = T)) %>%
  select(daily_vaccinations)
summary_info$daily_vaccinations_avg <- Coviddata %>%
  summarise(mean(daily_vaccinations, trim = 0, na.rm = T))


