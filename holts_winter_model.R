plot(dataCSpend)
train.mean <- HoltWinters(train, seasonal = "multiplicative") #applied hotl winters on train set 
dataCSpend.predHW <- predict(train.mean, n.ahead = 60, prediction.interval = TRUE) # predicted the future values for 60 months ahead
lines(train.mean$fitted[,1], col='blue') # plotted the trained set
lines(dataCSpend.predHW[,1], col='red') # plotted the predicted model
lines(dataCSpend.predHW[,2], col='green') # plotted the upper error range in predicted model
lines(dataCSpend.predHW[,3], col='green') # plotted the lower error range in the predicted model
accuracy(dataCSpend.predHW[,1],dataCSpend) # accuracy of the model
