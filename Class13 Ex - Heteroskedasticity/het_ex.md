# Heteroskedasticity Exercise
Tiago Afonso

# Class 13 - Heteroskedasticity Exercises

Wooldridge - Introductory Econometrics: A Modern Approach - Page 270

## Heteroskedasticity (Heteroscedasticidade)

### Fonte

-   **Livro**: Introductory Econometrics: A Modern Approach - Jeffrey M.
    Wooldridge
-   **Página**: 270
-   **Tema**: Heteroskedasticity (Heteroscedasticidade)
-   **Subject**: Econometria I
-   **Aula**: Class 13 - Exercícios sobre Heteroscedasticidade

# C(2) (adapted)

1.  Using the data in HPRICE1, estimate equation (i) by Ordinary Least
    Squares (OLS):

$$
\color{purple}{price = \beta_0 + \beta_1 lotsize + \beta_2 bdrms + \mu_i}
$$

Report the results in the usual format (estimated coefficients, standard
errors, number of observations, and *R*<sup>2</sup>). Interpret the
meaning of the estimated coefficient on lotsize. Is this coefficient
statistically significant at the 5% level?”

1.  After estimating the model in (a), obtain the residuals,
    $\color{purple}{\hat{\mu}\_i}$. Construct a scatter plot of the
    squared residuals ($\color{purple}{\hat{\mu}\_i^2}$) against each of
    the explanatory variables (lotsize and bdrms). Do these plots
    visually suggest the presence of heteroscedasticity?

2.  Perform the Breusch-Pagan test for heteroscedasticity for the
    previous equation. Clearly state the null hypothesis
    ($\color{purple}{H_0}$) and the alternative hypothesis
    ($\color{purple}{H_1}$).Report the relevant test statistic (in its
    *F* or *L**M* form) and the associated p-value. Based on this
    result, what do you conclude about the presence of
    heteroscedasticity?”

3.  Use the data in **HPRICE1** to obtain the heteroscedasticity-robust
    standard errors for the equation:

$$
\color{purple}{price = \beta_0 + \beta_1 lotsize + \beta_2 bdrms + \mu_i}
$$

Discuss any important differences with the usual standard errors.

1.  Repeat the part (v) for equation:

$$
\color{purple}{log(price) = \beta_0 + \beta_1 log(lotsize) + \beta_2 log(bdrms) + \mu_i}
$$

1.  What does this example suggest about heteroscedasticity and the
    transformation used for the dependent variable?

2.  Apply the full White test for heteroscedasticity for equation (v).
    Using the chi square form of the statistic, obtain the p-value. what
    do you conclude?

# C(4)

Use **VOTE1** for this exercise

1.  Estimate a model with *voteA* as the dependent variable and
    *prtystrA*, *democA*, log(*expendA*), and log(*expendB*) as
    independent variables. Obtain the OLS residuals,
    $\color{purple}{\mu_i^2}$ , and regress these on all of the
    independent variables. Explain why you obtain
    $\color{purple}{R^2}=0$.

2.  Now, compute the Breusch-Pagan test for heteroskedasticity. Use the
    Chi-squared statistic version and report the *p-value*.

# C(7)

Use the data in **LOANAPP** for this exercise.

1.  Estimate the equation in part (iii) of Computer Exercise C8 in
    Chapter 7, computing the heteroskedasticity-robust standard errors.
    Compare the 95% confidence interval on b_yjob with the nonrobust
    confidence interval.

$$
\color{purple}{approve = \beta_0 + \beta_1 yjob + otherfactors}
$$

1.  Obtain the fitted values from the regression in part (i). Are any of
    them less than zero? Are any of them greater than one? What does
    this mean about applying weighted least squares?

# C(8)

Use the data set **GPA1** for this exercise.

1.  Use OLS to estimate a model relating $\color{purple}{colGPA}$ to
    $\color{purple}{hsGPA}$, $\color{purple}{ACT}$,
    $\color{purple}{skipped}$, and $\color{purple}{PC}$. Obtain the OLS
    residuals.

2.  Compute the special case of the White test for heteroskedasticity.
    In the regression of $\color{purple}{μ_i^2}$ on
    $\color{purple}{colGPA}$, $\color{purple}{colGPA^2}$, obtain the
    fitted values say $\color{purple}{\hat{h}\_i}$.

3.  Verify that the fitted values from part (ii) are all strictly
    positive. Then, obtain the weighted least squares estimates using
    weights $\color{purple}{1/\hat{h}\_i}$. Compare the weighted least
    squares estimates for the effect of skipping lectures and the effect
    of PC ownership with the corresponding OLS estimates. What about
    their statistical significance?

4.  In the WLS estimation from part (iii), obtain
    heteroskedasticity-robust standard errors. In other words, allow for
    the fact that the variance function estimated in part (ii) might be
    misspecified. Do the standard errors change much from part (iii)?

# C(11)

Use the data in **K401KSUBS** for this question, restricting the sample
to $\color{purple}{fsize =1}$.

1.  To the model estimated in Table 8.1, add the interaction term,
    e401k\*inc. Estimate the equation by OLS and obtain the usual and
    robust standard errors. What do you conclude about the statistical
    significance of the interaction term?
    $$
    \color{purple}{nettfa=\beta_0+\beta_1 inc+\beta_2 (age-25)^2+\beta_3 male+\beta_4 e401k+\beta_5 (e401k\*inc)+\mu}\_i
    $$

2.  Now estimate the more general model by WLS using the same weights,
    $\color{purple}{1/inc_i}$, as in Table 8.1. Compute the usual and
    robust standard error for the WLS estimator. Is the interaction term
    statistically significant using the robust standard error?

3.  Discuss the WLS coefficient on $\color{purple}{e401k}$ in the more
    general model. Is it of much interest by itself? Explain.

4.  Reestimate the model by WLS but use the interaction term
    $\color{purple}{e401k\*(inc – 30)}$.
