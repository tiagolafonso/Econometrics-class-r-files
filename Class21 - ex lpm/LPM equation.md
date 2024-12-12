# Linear Probability Model
The linear probability model is a special case of the linear regression model where the dependent variable is binary. The model is given by:
$$ P(y=1|x) = \beta_0 + \beta_1 x_1 + \beta_2 x_2 + \ldots + \beta_k x_k + \epsilon $$
where $y$ is the binary dependent variable, $x$ is the independent variable, and $\epsilon$ is the error term. The model is estimated using ordinary least squares (OLS) regression. The predicted probability of $y=1$ is given by the linear combination of the independent variables and the estimated coefficients. The model is used to estimate the probability of an event occurring based on the values of the independent variables. The coefficients of the model represent the change in the probability of the event occurring for a one-unit change in the independent variable, holding all other variables constant.

