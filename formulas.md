# R-Code - Econometrics
Tiago Afonso

# R Packages for Econometrics

``` r
rm(list=ls())
ch <- function () {
  write("", file=".blank")
  loadhistory(".blank")
  unlink(".blank")
}
ch()

 # Rpackages 
library(readxl) #read external files
library(stargazer) #manipulatns data frame
library(tidyverse) #estimating models
library(systemfit) #testing models
library(caret) #classification 
library(magrittr) #to calculate statistics
library(mfx) #tocalculate derivations 
library(performance) #evaluating binary outcome models
library(lmtest) #lm test
library(moments) #statistical tests
library(AER) #sample database
library(MASS) #transformations
library(scales) #rescale
library(sandwich) #empirical estimation function
library(nlme) #non linear
library(skedastic) #heteroskedasticity
library(tseries) # time series
```

# Some Useful Functions

`?` - help file

`lm` - linear regression model

`glm` - generalized linear regression model

`gls` - generalized least squares method

`read` - load external data files

`summary` - view outputs or statistics

`abs` - absolute value

`coef` - set coefficient from a estimated model

`table` - tabulate data

`logLik` - obtain likelihood from a estimated model

`lrtest` - likelihood ratio test

`performance_pcp` - percentage correctly predicted

`plot` - scatter plot graph

`abline` - fit line in scatter plots

`boxplot` - boxplot

`hist` - histograma

`cor` - correlation

`rm` - remove object

`fitted` - fitted values

`residual` - residuals

`mutate` - add columns

`pchisq` - P value for chisq distribution

`coeftest` - coefficient calculations

`vcovHAC` - co-variance matrix

`confint` - confidence interval

`shapiro.test` - shapiro tests

`jarque.bera.test` - JB test

`resettest` - Ramsey test

`logLik` - extract log-likelihood

`deviance` -extract log-likelihood

`performance_pcp` - percentage correctly predicted

heteroskadasticity tests - estimate base model

    - calculate residuals

    - obtain n (n_obs), r2 (R-squared) and k (nº 

    - of independent variables)

    - LMstat = n*r2

`filter` - filter data by row

`linearHypothesis` - wald test for coefficients

`confusionMatrix` - classification matrix

`mfx` - partial effects
