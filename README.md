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

Box-Jenkins Methodolgy

Split into training and test sets

Logistic Regression -- binary classification problems (the output is either 0 or 1)

Description of data preprocessing
Description of feature engineering and the feature selection, including their decisionmaking process
Description of how data was split into training and testing sets 
Explanation of model choice, including limitations and benefits
Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)
Description of how they have trained the model thus far, and any additional training that will take place
Description of current accuracy score
Additionally, the model obviously addresses the question or problem the team is solving.
