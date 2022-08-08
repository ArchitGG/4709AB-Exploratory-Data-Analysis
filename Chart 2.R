library(ggplot2)

Covid_Data <- read.csv("https://raw.githubusercontent.com/ArchitGG/4709AB-Exploratory-Data-Analysis/main/us_state_vaccinations%20(2).csv")

total_dist_vacc <- ggplot(data = Covid_Data) +
  geom_point(mapping = aes(x = total_distributed, y = people_vaccinated)) +
  labs(title="Covid Vaccinations Distributed vs People Vaccinated", x= "Total Distributed Vaccinations", y= "Total People Vaccinated")

print(total_dist_vacc)
