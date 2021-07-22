# Waste_Management

## Machine Learning Model

One of the ways we can think about our data is as a time series dataset (stationary data set).

ARIMA (AutoRegressive Integrated Moving Average) -- a linear function of the differenced observations and residual errors at prior time steps
  - predicts future values based on past values
  - accounts for (and adjusts for) seasonality. The goal is to achieve stationary data. Check for seasonality using ACF or PACF methods.
  - dependency between an observed value and a residual error from a moving average model applied to previous observations

Parameters:
  - p: number of autoregressive terms
  - d: number of nonseasonal differences
  - q: number of moving average terms

ARIMA is nice to use because it breaks down into many different models:
  - AutoRegression (AR)
  - Integrated (I)
  - Moving Average (MA)

Split into training and test sets

Logistic Regression -- binary classification problems (the output is either 0 or 1)
