library(readr)
ontime <- read_csv("Jan_2019_ontime.csv")
View(ontime)
ontime

## Linear Regreassion Model:  y = 1237.4823639 + 0.1520527x
plot(ontime$DISTANCE,ontime$DEP_TIME, xlab = "Distance", ylab = "Departure Time", main = "January Flight Data")
pine.lm <- lm(DEP_TIME ~ DISTANCE, data = ontime)
pine.lm
##Call:
##  lm(formula = DEP_TIME ~ DISTANCE, data = ontime)

## Coefficients:
##  (Intercept)     DISTANCE  
## 1237.4824       0.1521  

abline(pine.lm, col= "red")
coef(pine.lm)
## (Intercept)     DISTANCE 
## 1237.4823639    0.1520527 
summary(pine.lm)

## Call:
##  lm(formula = DEP_TIME ~ DISTANCE, data = ontime)

## Residuals:
##  Min      1Q  Median      3Q     Max 
## -760.77 -238.10   18.27  243.35  917.85 

## Coefficients:
##  Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 1237.4824   181.4416   6.820 2.08e-07 ***
##  DISTANCE       0.1521     0.4051   0.375     0.71    
## ---
##  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

## Residual standard error: 397.7 on 28 degrees of freedom
## Multiple R-squared:  0.005007,	Adjusted R-squared:  -0.03053 
## F-statistic: 0.1409 on 1 and 28 DF,  p-value: 0.7102


## Histogram of the residuals
resid(pine.lm)
hist(resid(pine.lm), xlab = "Residual", ylab = "Frequency", main = "January Flight Data Residual")

## Scatter plot of the actual observed response value vs. residual
plot(ontime$DISTANCE,resid(pine.lm), xlab = "Distance", ylab = "Residual", main = "Observed Value vs. Residual" )
abline(h = 0, col= "Orange")
