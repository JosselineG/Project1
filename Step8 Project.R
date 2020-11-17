
# 1.Distance mean
xbar <- mean(ontime$DISTANCE)
xbar
##410.5

# Distance standard deviation
s <- sd(ontime$DISTANCE)
s
##182.3344

# number of rows
n <- 30

# t-distribution
t <- -qt(0.025,n-1)
t
## 2.04523


# Confidence Intervals
xbar - t*s/sqrt(n)
## 342.4152
xbar + t*s/sqrt(n)
## 478.5848


# 2.Departure mean
xbar <- mean(ontime$DEP_TIME)
xbar
## 1299.9

# Departure standard deviation
s <- sd(ontime$DEP_TIME)
s
## 391.7935

# Number of rows
n <- 30

# T-distribution
t <- -qt(0.025, n-1)
t
## 2.04523

# Confidence Intervals
xbar - t*s/sqrt(n)
## 1153.602
xbar + t*s/sqrt(n)
## 1446.198




