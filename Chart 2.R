library(readr)
CovidData <- read_csv("C:/Users/ArchitGG/Desktop/us_state_vaccinations.csv")
View(CovidData)

chart_2 <- plot(CovidData$total_distributed, CovidData$people_vaccinated, main = "Covid Vaccinations Distributed vs People Vaccinated",
     xlab = "TotalDistributedVaccinations", ylab = "TotalPeopleVaccinated")
abline(lm(TotalDistributedVaccinations~TotalPeopleVaccinated, data = CovidData, col ="red" )
       
       