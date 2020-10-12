library(readr)
ontime <- read_csv("Jan_2019_ontime.csv")
View(ontime)
ontime

#Quantitative Data using a histogram
hist(ontime$DISTANCE, xlab = "Distance", ylab = "Frequency", main = "Distance of Flights")
hist(ontime$DEP_TIME, xlab = "Departure Time", ylab = "Frequency", main = "Flights Departure Time")
hist(ontime$ARR_TIME, xlab = "Arrival Time", ylab = "Frequency", main = "Flights Arrival Time")

#Qualitative Data using barplot
barplot(table(ontime$ARR_DEL15), xlab = "15 mins or more (1 = Yes, 0 = No)", ylab = "Frequency", main = "Arrival Delay Indicator")

