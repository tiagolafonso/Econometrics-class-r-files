Tiago Afonso
2025-11-04

-   [Wooldridge (pg 161)](#wooldridge-pg-161)
    -   [C11 `Eviews` and `R`](#c11-eviews-and-r)
    -   [C6](#c6)
    -   [C8](#c8)
-   [Wooldridge (pg 178)](#wooldridge-pg-178)
    -   [C1](#c1)
    -   [C5](#c5)
    -   [C6 Use the data in `ECONMATH` to answer this
        question](#c6-use-the-data-in-econmath-to-answer-this-question)
-   [Wooldridge (pg 214)](#wooldridge-pg-214)
    -   [C1](#c1-1)
    -   [C5](#c5-1)

# Wooldridge (pg 161)

## C11 `Eviews` and `R`

Use the data in HTV to answer this question. See also Computer Exercise
C10 in Chapter 3.

**(i)** Estimate the regression model

*𝑒**𝑑**𝑢**𝑐* = *β*<sub>0</sub> + *β*<sub>1</sub>*𝑚**𝑜**𝑡**ℎ**𝑒**𝑑**𝑢* + *β*<sub>2</sub>*𝑎**𝑏**𝑖**𝑙* + *𝜇*

by OLS and report the results in the usual form. Test the null
hypothesis that `educ` is linearly related to `abil`.

**(ii)** Using the equation in part (i), test H0:
*𝛽*<sub>1</sub> = *𝛽*<sub>2</sub> against a two-sided alternative. What
is the p-value of the test?

**(iii)** Add the two college tuition variables to the regression from
part (i) and determine whether they are jointly statistically
significant.

**(iv)** What is the correlation between tuit17 and tuit18? Explain why
using the average of the tuition over the two years might be preferred
to adding each separately. What happens when you do use the average?

**(v)** Do the findings for the average tuition variable in part (iv)
make sense when interpreted causally? What might be going on?

A data.frame with 1230 observations on 23 variables:

wage: hourly wage, 1991 abil: abil. measure, not standardized educ:
highest grade completed by 1991

<table>
<colgroup>
<col style="width: 11%" />
<col style="width: 38%" />
<col style="width: 11%" />
<col style="width: 38%" />
</colgroup>
<thead>
<tr class="header">
<th>Variable</th>
<th>Description</th>
<th>Variable</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>ne</td>
<td>=1 if in northeast, 1991</td>
<td>lwage</td>
<td>log(wage)</td>
</tr>
<tr class="even">
<td>nc</td>
<td>=1 if in north central, 1991</td>
<td>expersq</td>
<td>exper^2</td>
</tr>
<tr class="odd">
<td>west</td>
<td>=1 if in west, 1991</td>
<td>ctuit</td>
<td>tuit18 - tuit17</td>
</tr>
<tr class="even">
<td>south</td>
<td>=1 if in south, 1991</td>
<td>tuit17</td>
<td>college tuition</td>
</tr>
<tr class="odd">
<td>exper</td>
<td>potential experience</td>
<td>tuit18</td>
<td>college tuition</td>
</tr>
<tr class="even">
<td>motheduc</td>
<td>highest grade, mother</td>
<td>fatheduc</td>
<td>highest grade, father</td>
</tr>
<tr class="odd">
<td>brkhme14</td>
<td>=1 if broken home, age 14</td>
<td>sibs</td>
<td>number of siblings</td>
</tr>
<tr class="even">
<td>urban</td>
<td>=1 if in urban area, 1991</td>
<td>ne18</td>
<td>=1 if in NE</td>
</tr>
<tr class="odd">
<td>nc18</td>
<td>=1 if in NC</td>
<td>south18</td>
<td>=1 if in south</td>
</tr>
<tr class="even">
<td>west18</td>
<td>=1 if in west</td>
<td>urban18</td>
<td>=1 if in urban area</td>
</tr>
</tbody>
</table>

------------------------------------------------------------------------

## C6

Use the data in `WAGE2` for this exercise.

**(i)** Consider the standard wage equation

*l**o**g*(*w**a**g**e*) = *β*<sub>0</sub> + *β*<sub>1</sub>*e**d**u**c* + *β*<sub>2</sub>*e**x**p**e**r* + *β*<sub>3</sub>*e**x**p**e**r*<sup>2</sup> + *μ*

Interpret *b**e**t**a*<sub>0</sub>, *b**e**t**a*<sub>1</sub> and
*b**e**t**a*<sub>2</sub>.

**(ii)** State the null hypothesis that another year of general
workforce experience has the same effect on log(wage) as another year of
tenure with the current employer.

**(iii)** Test the null hypothesis in part (ii) against a two-sided
alternative, at the 5% significance level, by constructing a 95%
confidence interval. What do you conclude?

<table>
<colgroup>
<col style="width: 10%" />
<col style="width: 39%" />
<col style="width: 10%" />
<col style="width: 39%" />
</colgroup>
<thead>
<tr class="header">
<th>Variable</th>
<th>Description</th>
<th>Variable</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>wage</td>
<td>monthly earnings</td>
<td>hours</td>
<td>average weekly hours</td>
</tr>
<tr class="even">
<td>IQ</td>
<td>IQ score</td>
<td>KWW</td>
<td>knowledge of world work score</td>
</tr>
<tr class="odd">
<td>educ</td>
<td>years of education</td>
<td>exper</td>
<td>years of work experience</td>
</tr>
<tr class="even">
<td>tenure</td>
<td>years with current employer</td>
<td>age</td>
<td>age in years</td>
</tr>
<tr class="odd">
<td>married</td>
<td>=1 if married</td>
<td>black</td>
<td>=1 if black</td>
</tr>
<tr class="even">
<td>south</td>
<td>=1 if live in south</td>
<td>urban</td>
<td>=1 if live in SMSA</td>
</tr>
<tr class="odd">
<td>sibs</td>
<td>number of siblings</td>
<td>brthord</td>
<td>birth order</td>
</tr>
<tr class="even">
<td>meduc</td>
<td>mother’s education</td>
<td>feduc</td>
<td>father’s education</td>
</tr>
<tr class="odd">
<td>lwage</td>
<td>natural log of wage</td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

------------------------------------------------------------------------

## C8

The data set `401KSUBS` contains information on net financial wealth
(`nettfa`), age of the survey respondent (`age`), annual family income
(`inc`), family size (`fsize`), and participation in certain pension
plans for people in the United States. The wealth and income variables
are both recorded in thousands of dollars. For this question, use only
the data for single-person households (so *f**s**i**z**e* = 1).

**(i)** How many single-person households are there in the data set?

**(ii)** Use OLS to estimate the model:

*n**e**t**t**f**a* = *β*<sub>0</sub> + *β*<sub>1</sub>*a**g**e* + *β*<sub>2</sub>*i**n**c* + *μ*

and report the results using the usual format. Be sure to use only the
single-person households in the sample. Interpret the slope
coefficients. Are there any surprises in the slope estimates?

**(iii)** Does the intercept from the regression in part (ii) have an
interesting meaning? Explain.

**(iv)** Find the p-value for the test H0: *β*<sub>2</sub> = 1 against
H1: *β*<sub>2</sub> \< 1. Do you reject H0 at the 1% significance level?

**(v)** If you do a simple regression of `nettfa` on `inc`, is the
estimated coefficient on inc much different from the estimate in part
(ii)? Why or why not?

------------------------------------------------------------------------

# Wooldridge (pg 178)

## C1

Use the data in `WAGE1` for this exercise.

**(ii)** Estimate the equation:

*w**a**g**e* = *β*<sub>0</sub> + *β*<sub>1</sub>*e**d**u**c* + *β*<sub>2</sub>*e**x**p**e**r* + *β*<sub>3</sub>*t**e**n**u**r**e* + *μ*

Save the residuals and plot a histogram.

**(ii)** Repeat part (i), but with log(wage) as the dependent variable.

**(iii)** Would you say that Assumption of linearity is closer to being
satisfied for the level-level model or the log-level model? Explain.

------------------------------------------------------------------------

## C5

Consider the analysis in Computer Exercise C11 in Chapter 4 using the
data in HTV, where educ is the dependent variable in a regression

**(i)** How many different values are taken on by educ in the sample?
Does educ have a continuous distribution?

**(ii)** Plot a histogram of educ with a normal distribution overlay.
Does the distribution of `educ` appear anything close to normal?

**(iii)** Which of the CLM assumptions seems clearly violated in the
model:

*e**d**u**c* = *β*<sub>0</sub> + *β*<sub>1</sub>*m**o**t**h**e**d**u**c* + *β*<sub>2</sub>*f**a**t**h**e**r**e**d**u**c* + *β*<sub>3</sub>*a**b**i**l* + *β*<sub>4</sub>*a**b**i**l*<sup>2</sup> + *μ*

How does this violation change the statistical inference procedures
carried out in Computer Exercise C11 in Chapter 4?
(*𝑒**𝑑**𝑢**𝑐* = *β*<sub>0</sub> + *β*<sub>1</sub>*𝑚**𝑜**𝑡**ℎ**𝑒**𝑑**𝑢* + *β*<sub>2</sub>*𝑎**𝑏**𝑖**𝑙* + *μ*)

------------------------------------------------------------------------

## C6 Use the data in `ECONMATH` to answer this question

**(i)** Logically, what are the smallest and largest values that can be
taken on by the variable score? What are the smallest and largest values
in the sample?

**(ii)** Consider the linear model

*s**c**o**r**e* = *β*<sub>0</sub> + *β*<sub>1</sub>*c**o**l**d**p**g* + *β*<sub>2</sub>*a**c**t**m**t**h* + *μ*

Why cannot Assumption MLR.6 (normality) hold for the error term *μ*?
What consequences does this have for using the usual t statistic to test
*H*<sub>0</sub> : *β*<sub>3</sub> = 0?

**(iii)** Estimate the model from part (ii) and obtain the t statistic
and associated p-value for testing
*H*<sub>0</sub> : *β*<sub>3</sub> = 0. How would you defend your
findings to someone who makes the following statement: “You cannot trust
that p-value because clearly the error term in the equation cannot have
a normal distribution.”

------------------------------------------------------------------------

# Wooldridge (pg 214)

## C1

Use the data in `KIELMC`, only for the year 1981, to answer the
following questions. The data are for houses that sold during 1981 in
North Andover, Massachusetts; 1981 was the year construction began on a
local garbage incinerator.

**(i)** To study the effects of the incinerator location on housing
price, consider the simple regression model:

*l**o**g*(*p**r**i**c**e*) = *β*<sub>0</sub> + *β*<sub>1</sub>*l**o**g*(*d**i**s**t*) + *μ*

where price is housing price in dollars and `dist` is distance from the
house to the incinerator measured in feet. Interpreting this equation
causally, what sign do you expect for *β*<sub>1</sub> if the presence of
the incinerator depresses housing prices? Estimate this equation and
interpret the results.

**(ii)** To the simple regression model in part (i), add the variables
*l**o**g*(*i**n**t**s**t*), *l**o**g*(*a**r**e**a*),
*l**o**g*(*l**a**n**d*), *r**o**o**m**s*, *b**a**t**h**s*, and
*a**g**e*, where *i**n**t**s**t* is distance from the home to the
interstate, area is square footage of the house, land is the lot size in
square feet, *r**o**o**m**s* is total number of rooms, *b**a**t**h**s*
is number of bathrooms, and *a**g**e* is age of the house in years. Now,
what do you conclude about the effects of the incinerator? Explain why
(i) and (ii) give conflicting results.

**(iii)** Add *l**o**g*(*i**n**t**s**t*)<sup>2</sup> to the model from
part (ii). Now what happens? What do you conclude about the importance
of functional form?

**(iv)** Is the square of *l**o**g*(*d**i**s**t*) significant when you
add it to the model from part (iii)?

------------------------------------------------------------------------

## C5

Use the housing price data in `HPRICE1` for this exercise

**(i)** Estimate the model:

*l**o**g*(*p**r**i**c**e*) = *β*<sub>0</sub> + *β*<sub>1</sub>*l**o**g*(*l**o**t**s**i**z**e*) + *β*<sub>2</sub>*l**o**g*(*s**q**r**f**t*) + *β*<sub>3</sub>*b**d**r**m**s* + *μ*

and report the results in the usual OLS form. Interpret the slope
coefficients.

**(ii)** Add *b**d**r**m**s*<sup>2</sup> to the regression in part (i).
Is it statistically significant at the 5% level? What does its sign
imply about the relationship between number of bedrooms and log(price)?

**(iii)** Find the predicted value of `price` at the same values of the
explanatory variables.

**(iv)** For explaining variation in price, decide whether you prefer
the model from part (i) or the model:

*p**r**i**c**e* = *β*<sub>0</sub> + *β*<sub>1</sub>*l**o**t**s**i**z**e* + *β*<sub>2</sub>*s**q**r**f**t* + *μ*
