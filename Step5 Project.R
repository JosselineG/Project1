library(readr)
ontime <- read_csv("Jan_2019_ontime.csv")
View(ontime)
ontime

#Distance
median(ontime$DISTANCE)
mean(ontime$DISTANCE)
var(ontime$DISTANCE)
sd(ontime$DISTANCE)


#Departure Time
median(ontime$DEP_TIME)
mean(ontime$DEP_TIME)
var(ontime$DEP_TIME)
sd(ontime$DEP_TIME)
