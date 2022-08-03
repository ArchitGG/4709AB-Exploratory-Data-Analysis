Coviddata <- read.csv("D:/us_state_vaccinations.csv")

barplot(Coviddata$daily_vaccinations, names = Coviddata$date, ylim = c(0, 3500000), ylab = 'Daily # of Vaccinations', xlab = 'Date in 2021', main = 'Distribution of COVID Vaccinations Over Time in 2021')


