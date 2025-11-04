# Wooldridge (pg 161)

## C11 `Eviews` and `R` 

Use the data in HTV to answer this question. See also Computer Exercise C10 in Chapter 3.

**(i)** Estimate the regression model 

$$
𝑒𝑑𝑢𝑐 = \beta_0 + \beta_1 𝑚𝑜𝑡ℎ𝑒𝑑𝑢 + \beta_2 𝑎𝑏𝑖𝑙 + 𝜇
$$



by OLS and report the results in the usual form. Test the null hypothesis that `educ` is linearly related to `abil`. 


**(ii)** Using the equation in part (i), test H0: $𝛽_1 = 𝛽_2$ against a two-sided alternative. What is 
the p-value of the test?


**(iii)** Add the two college tuition variables to the regression from part (i) and determine whether they are jointly statistically significant.



**(iv)** What is the correlation between tuit17 and tuit18? Explain why using the average of the tuition over the two years might be preferred to adding each separately. What happens when you do use the average? 

**(v)** Do the findings for the average tuition variable in part (iv) make sense when interpreted causally? What might be going on?

A data.frame with 1230 observations on 23 variables: 
 
wage: hourly wage, 1991 abil: abil. measure, not standardized educ: highest grade completed by 1991 

| Variable  | Description                       | Variable  | Description                       | 
|-----------|-----------------------------------|-----------|-----------------------------------| 
| ne        | =1 if in northeast, 1991          | lwage     | log(wage)                         | 
| nc        | =1 if in north central, 1991      | expersq   | exper^2                           | 
| west      | =1 if in west, 1991               | ctuit     | tuit18 - tuit17                   | 
| south     | =1 if in south, 1991              | tuit17    | college tuition                   | 
| exper     | potential experience               | tuit18    | college tuition                   | 
| motheduc  | highest grade, mother             | fatheduc  | highest grade, father             | 
| brkhme14  | =1 if broken home, age 14         | sibs      | number of siblings                | 
| urban     | =1 if in urban area, 1991         | ne18      | =1 if in NE                       | 
| nc18      | =1 if in NC                       | south18   | =1 if in south                    | 
| west18    | =1 if in west                     | urban18   | =1 if in urban area               | 

---


## C6

Use the data in `WAGE2` for this exercise.

**(i)** Consider the standard wage equation

$$
log(wage)=\beta_0 + \beta_1 educ + \beta_2 exper + \beta_3 exper^2 + \mu
$$

Interpret $beta_0$, $beta_1$ and $beta_2$. 

**(ii)** State the null hypothesis that another year of general workforce experience has the same effect on log(wage) as another year of tenure with the current employer. 

**(iii)** Test the null hypothesis in part (ii) against a two-sided alternative, at the 5% significance level, by constructing a 95% confidence interval. What do you conclude? 


| Variable  | Description                               | Variable  | Description                               |
|-----------|-------------------------------------------|-----------|-------------------------------------------|
| wage      | monthly earnings                          | hours     | average weekly hours                      |
| IQ        | IQ score                                  | KWW       | knowledge of world work score             |
| educ      | years of education                        | exper     | years of work experience                  |
| tenure    | years with current employer               | age       | age in years                              |
| married   | =1 if married                             | black     | =1 if black                               |
| south     | =1 if live in south                      | urban     | =1 if live in SMSA                       |
| sibs      | number of siblings                        | brthord   | birth order                               |
| meduc     | mother's education                        | feduc     | father's education                         |
| lwage     | natural log of wage                      |           |                                           |

---

## C8

The data set `401KSUBS` contains information on net financial wealth (`nettfa`), age of the survey respondent (`age`), annual family income (`inc`), family size (`fsize`), and participation in certain pension plans for people in the United States. The wealth and income variables are both recorded in thousands of dollars. For this question, use only the data for single-person households (so $fsize=1$).

**(i)** How many single-person households are there in the data set? 

**(ii)** Use OLS to estimate the model:

$$
nettfa = \beta_0 + \beta_1 age + \beta_2 inc + \mu
$$

and report the results using the usual format. Be sure to use only the single-person households in the sample. Interpret the slope coefficients. Are there any surprises in the slope estimates?

**(iii)** Does the intercept from the regression in part (ii) have an interesting meaning? Explain.

**(iv)** Find the p-value for the test H0: $\beta_2 = 1$ against H1: $\beta_2 < 1$. Do you reject H0 at the 1% significance level?

**(v)** If you do a simple regression of `nettfa` on `inc`, is the estimated coefficient on inc much different from the estimate in part (ii)? Why or why not?

---

# Wooldridge (pg 178)

## C1 

Use the data in `WAGE1` for this exercise.

**(ii)** Estimate the equation:

$$
wage=\beta_0 + \beta_1 educ + \beta_2 exper + \beta_3 tenure + \mu
$$

Save the residuals and plot a histogram.

**(ii)**  Repeat part (i), but with log(wage) as the dependent variable.

**(iii)** Would you say that Assumption of linearity is closer to being satisfied for the level-level model or the log-level model? Explain.

---

## C5

Consider the analysis in Computer Exercise C11 in Chapter 4 using the data in HTV, where educ is the dependent variable in a regression

**(i)** How many different values are taken on by educ in the sample? Does educ have a continuous distribution?

**(ii)** Plot a histogram of educ with a normal distribution overlay. Does the distribution of `educ` appear anything close to normal?

**(iii)** Which of the CLM assumptions seems clearly violated in the model:

$$
educ=\beta_0 + \beta_1 motheduc + \beta_2 fathereduc + \beta_3 abil +\beta_4 abil^2 + \mu
$$

How does this violation change the statistical inference procedures carried out in Computer Exercise C11 in Chapter 4?  ($𝑒𝑑𝑢𝑐 = \beta_0 + \beta_1 𝑚𝑜𝑡ℎ𝑒𝑑𝑢 + \beta_2 𝑎𝑏𝑖𝑙 + \mu$)

---

## C6 Use the data in `ECONMATH` to answer this question

**(i)** Logically, what are the smallest and largest values that can be taken on by the variable score? What are the smallest and largest values in the sample?

**(ii)** Consider the linear model 

$$
score = \beta_0 + \beta_1 coldpg + \beta_2 actmth + \mu
$$


Why cannot Assumption MLR.6 (normality) hold for the error term $\mu$? What consequences does this have for using the usual t statistic to test $H_0: \beta_3 = 0$? 


**(iii)** Estimate the model from part (ii) and obtain the t statistic and associated p-value for testing $H_0: \beta_3 = 0$. How would you defend your findings to someone who makes the following statement: “You cannot trust that p-value because clearly the error term in the equation cannot have a normal distribution.” 

---

# Wooldridge (pg 214)

## C1

Use the data in `KIELMC`, only for the year 1981, to answer the following questions. The data are for houses that sold during 1981 in North Andover, Massachusetts; 1981 was the year construction began on a local garbage incinerator.

**(i)**  To study the effects of the incinerator location on housing price, consider the simple regression model:

$$
log(price) = \beta_0 + \beta_1 log(dist) + \mu
$$

where price is housing price in dollars and `dist` is distance from the house to the incinerator measured in feet. Interpreting this equation causally, what sign do you expect for $\beta_1$ if the presence of the incinerator depresses housing prices? Estimate this equation and interpret the results.

**(ii)** To the simple regression model in part (i), add the variables $log(intst)$, $log(area)$, $log(land)$, $rooms$, $baths$, and $age$, where $intst$ is distance from the home to the interstate, area is square footage of the house, land is the lot size in square feet, $rooms$ is total number of rooms, $baths$ is number of bathrooms, and $age$ is age of the house in years. Now, what do you conclude about the effects of the incinerator? Explain why (i) and (ii) give conflicting results.

**(iii)** Add $log(intst)^2$ to the model from part (ii). Now what happens? What do you conclude about the importance of functional form? 

**(iv)** Is the square of $log(dist)$ significant when you add it to the model from part (iii)?

---

## C5

Use the housing price data in `HPRICE1` for this exercise

**(i)** Estimate the model:

$$
log(price) = \beta_0 + \beta_1 log(lotsize) + \beta_2 log(sqrft) + \beta_3 bdrms + \mu
$$

and report the results in the usual OLS form. Interpret the slope coefficients.

**(ii)** Add $bdrms^2$ to the regression in part (i). Is it statistically significant at the 5% level? What does its sign imply about the relationship between number of bedrooms and log(price)?

**(iii)** Find the predicted value of `price` at the same values of the explanatory variables.

**(iv)** For explaining variation in price, decide whether you prefer the model from part (i) or the model: 

$$
price = \beta_0 + \beta_1 lotsize + \beta_2 sqrft + \mu
$$

