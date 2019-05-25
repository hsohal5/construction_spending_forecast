# Forecasting total spending on commercial construction
Predicted the total spending on commercial construction every month over a span of 3 years. Every month a lot of money is spent on commercial constructions by government and private companies in area. Due to uncertainty of construction costs some of the projects are delayed or left in between until further funds are arranged. It helps in the management of cash flow and funds. Depending on the cost estimation the design can also be modified fitting the requirements.
Compared the predicted accuracy of ARIMA Model, Holt-Winters Seasonal Model and Time Series Linear Regression Model.

Accuracy Comparison:

| MODEL  | RMSE |
| ------ | ------ |
| ARIMA | 96747.64  |
| Holt-Winters Seasonal Model | 18369.79  |
| Time Series Linear Regression Model | 11902.45  |

From the above table could see that root mean square error value for Time Series Linear Regression model is the lowest as compared to ARIMA and Holt-Winters Seasonal model. Hence could say the Time Series Linear Regression model is more accurate to predict the future value in comparison to the other models.
Also, can see in the plot the train data set is more accurately plotted in ARIMA and Holt-Winters Seasonal model but the predicted values are not accurate. Whereas in Time Series Linear Regression Model the trained data set was not accurate while the predicted values were quite near to the original values.
Hence, can conclude Time Series Linear Regression is more accurate than other two models.
Time Series Linear Regression > Holt-Winters Seasonal Model > ARIMA

