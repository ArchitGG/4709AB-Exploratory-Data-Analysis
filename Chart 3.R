#libraries
library(readr)
library(ggplot2)
library(dplyr)

#read dataset
Covid_Data <- read.csv("https://raw.githubusercontent.com/ArchitGG/4709AB-Exploratory-Data-Analysis/main/us_state_vaccinations%20(2).csv")

us_vaccine_per_100 <- ggplot(vaccination_data, mapping = aes(x= total_vaccinations_per_hundred, y= people_fully_vaccinated_per_hundred)) +
  geom_line() + 
  labs(title = "Vaccinations Administered v.s People Fully Vaccinated, per hundred",
       x= "Vaccinations per hundred", y= "People Fully Vaccinated per hundred")

print(us_vaccine_per_100)

