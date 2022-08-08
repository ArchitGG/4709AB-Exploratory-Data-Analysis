Covid_Data <- read.csv("https://raw.githubusercontent.com/ArchitGG/4709AB-Exploratory-Data-Analysis/main/us_state_vaccinations%20(2).csv")

daily_num_vacc_2021 <- barplot(Covid_Data$daily_vaccinations, names = Covid_Data$date, ylim = c(0, 3500000), ylab = 'Daily # of Vaccinations', xlab = 'Date in 2021', main = 'Distribution of COVID Vaccinations Over Time in 2021')

