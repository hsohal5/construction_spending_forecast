dataCSpend <- read.csv("C:/Users/seera/Desktop/data analytics/total-construction-spending.csv") #uploaded the data set
dataCSpend <- ts(dataCSpend[,1],start = c(1993,1),frequency = 12) #converted to time series 
train <- ts(dataCSpend[1:248] , start = c(1993,1), frequency=12) #train set
test <- ts(dataCSpend[249:308] , start = c(2013,9), frequency=12) #test set
plot(diff((log10(log10(log10(train))))), xlab="Years", ylab="diff log Total Sales")
# plotted the stationary series
par(mfrow=c(1,2))
acf(ts(diff((log10(log10(log10(train)))))), main="ACF Construction Sales") #acf plot
pacf(ts(diff((log10(log10(log10(train)))))), main="PACF Construction Sales") #pacf plot
ARIMAfit <- auto.arima((log10(train)), approximation = FALSE, trace= FALSE) #applied arima model on train set
predictedArmia <- predict(ARIMAfit, n.ahead= 60) #predicted the future values for 60 months ahead ie till 08/2018
plot(dataCSpend) # plotted the original data
lines(10^(predictedArmia$pred), col='blue') # plotted the predicted data
lines(10^(ARIMAfit$fitted), col='green') # plotted the trained data 
accuracy(predictedArmia$pred,dataCSpend) #accuracy of arima model
