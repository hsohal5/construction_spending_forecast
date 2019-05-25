decompose(dataCSpend)
df_ts <- data.frame(value = train, as.numeric(time(train))) #took the numeric value of train set
tslmModel <- tslm(value~season+trend, df_ts) # applied time series linear regression on train set 
predicttslm <- forecast(tslmModel, h=60) # predicted the future values of 60 months ahead
autoplot(predicttslm, SeriesA="predicted") + autolayer(dataCSpend) + autolayer(tslmModel$fitted.values) # plotted the original data, predicted data and the trained data
accuracy(predicttslm$fitted , dataCSpend) # accuracy of the model
