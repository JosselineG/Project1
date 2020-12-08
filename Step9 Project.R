ontime <- read_csv("Jan_2019_ontime.csv")
View(ontime)
ontime

plot(ontime$DEP_TIME,ontime$ARR_TIME, xlab = "Departure Time", ylab = "Arrival Time", main = "January Flight Data")

pine.lm <- lm(ARR_TIME ~ DEP_TIME, data = ontime)
pine.lm
##Linear Regression Model y = 664.6869 + 0.5548x.

abline(pine.lm, col= "red")
coef(pine.lm)
summary(pine.lm)
## Call:
##  lm(formula = ARR_TIME ~ DEP_TIME, data = ontime)

## Residuals:
##  Min       1Q   Median       3Q      Max 
## -1878.12  -106.08    45.16   213.83   468.63 

## Coefficients:
##  Estimate Std. Error t value Pr(>|t|)
## (Intercept) 664.6869   262.2672   2.534  0.01714
## DEP_TIME      0.5548     0.1934   2.868  0.00777

## (Intercept) * 
##  DEP_TIME    **
##  ---
##  Signif. codes:  
##  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

## Residual standard error: 408.1 on 28 degrees of freedom
## Multiple R-squared:  0.2271,	Adjusted R-squared:  0.1995 
## F-statistic: 8.225 on 1 and 28 DF,  p-value: 0.007766

resid(pine.lm)
## Histogram of the residuals
hist(resid(pine.lm), xlab = "Residual", ylab = "Frequency", main = "January Flight Data Residual")

## Scatter plot of the actual observed response value vs. residual
plot(ontime$DEP_TIME,resid(pine.lm), xlab = "Departure Time", ylab = "Residual", main = "Observed Value vs. Residual" )
abline(h = 0)
