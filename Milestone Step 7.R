
View(ontime)
ontime

## Scatterplot of Departure Time and Arrival Time
plot(ontime$DEP_TIME, ontime$ARR_TIME, xlab = "Departure Time", ylab = "Arrival Time", main = "January Flight Data")

## Correlation between the columns
cor(ontime$DEP_TIME, ontime$ARR_TIME)
## 0.4765087