# **Class 16 exercices**

## **Eviews**

File: `class16_wdi.xlsx`

Eviews


**1.** Specify the variable with the highest minimum value. Specify the variable with the highest maximum value.

**2.** What is the percent change in GDP in 2009 compared to 2008?

**3.**  Estimate the regression: gdp trade fdi co2 res. Check for multicollinearity in 4 different ways.

**4.**  Estimate the regression: ln(gdp) trade co2 res. What is the impact of co2 on GDP? Does this outcome make sense?

**5.**  Estimate the regression: ln(GDP) ln(trade) ln(co2) ln(res). What is the impact of the variable trade on gdp?

**6.**  Estimate the regression: ln(co2) gdp trade res. What is the impact of the RES variable on CO2 emissions? Does this result have an economic interpretation? Explain.

**7.**  Given the regression in question 5, are there linear combinations between the independent variables?

**8.**  Given the regression in question 5, can the coefficient of the variable trade be equal to that of the variable res?

**9.**  Check the normality of the residuals for the regressions estimated in 3,4,5 and 6 .

**10.** Estimate a parsimonious model of the regression estimated in 4.

**11.** Given the regression in question 5, check the impact of the 2008 financial crisis on the German economy. Was the impact cyclical or structural?

**12.** Given the regression in question 5, check whether there is a structural break for 2008.

**13.** Given the regression in question 5, check whether there is a structural break for 2008.

**14.** Check the coeficients stability for the regression in question 5.

**15.** Check for redundant variables in equation 5. (show the statistic)

**16.** Check for omitted variables in equation 5. (show the statistic)

---


## **`R`** (positron)

 Wooldridge – Problem Sets

### Page 62

#### C1

The data in `K401K` are a subset of data analyzed by Papke (1995) to study the relationship between participation in a 401(k) pension plan and the generosity of the plan.  
The variable **prate** is the percentage of eligible workers with an active account; this is the variable we would like to explain.  
The measure of generosity is the plan match rate, **mrate**. This variable gives the average amount the firm contributes to each worker’s plan for each $1 contribution by the worker.  
For example, if **mrate = 0.50**, then a $1 contribution by the worker is matched by a 50¢ contribution by the firm.

1. Find the average participation rate and the average match rate in the sample of plans.  
2. Estimate the simple regression equation  

   $$
   \color{purple}prate = \beta_0 + \beta_1 mrate
   $$  

   and report the results along with the sample size and R-squared.  
3. Interpret the intercept in your equation. Interpret the coefficient on **mrate**.  
4. Find the predicted **prate** when **mrate = 3.5**. Is this a reasonable prediction? Explain what is happening here.  
5. How much of the variation in **prate** is explained by **mrate**? Is this a lot in your opinion?  

---

#### C5

For the population of firms in the chemical industry, let **rd** denote annual expenditures on research and development, and let **sales** denote annual sales (both are in millions of dollars).

1. Write down a model (not an estimated equation) that implies a constant elasticity between **rd** and **sales**. Which parameter is the elasticity?  
2. Estimate the model using the data in **RDCHEM**. Write out the estimated equation in the usual form. What is the estimated elasticity of **rd** with respect to **sales**? Explain in words what this elasticity means.  

---

#### C10

The data set in `CATHOLIC` includes test score information on over 7,000 students in the United States who were in eighth grade in 1988.  
The variables **math12** and **read12** are scores on twelfth grade standardized math and reading tests, respectively.

1. How many students are in the sample? Find the means and standard deviations of **math12** and **read12**.  
2. Run the simple regression of **math12** on **read12** to obtain the OLS intercept and slope estimates. Report the results in the form:  


   $\color{purple}math12 = \beta_0 + \beta_1 read12, \quad n = ?, \quad R^2 = ?$  


3. Does the intercept reported in part (ii) have a meaningful interpretation? Explain.  
4. Are you surprised by the $\color{purple}\beta_1$ that you found? What about $\color{purple}R^2$?  
5. Suppose that you present your findings to a superintendent of a school district, and the superintendent says: 

   *“Your findings show that to improve math scores we just need to improve reading scores, so we should hire more reading tutors.”*  

How would you respond to this comment?  

   *(Hint: If you instead run the regression of **read12** on **math12**, what would you expect to find?)*  

---

#### C11

Use the data in `GPA1` to answer these questions. It is a sample of Michigan State University undergraduates from the mid-1990s, and includes current college GPA (**colGPA**) and a binary variable indicating whether the student owned a personal computer (**PC**).

1. How many students are in the sample? Find the average and highest college GPAs.  
2. How many students owned their own PC?  
3. Estimate the simple regression equation  

   $\color{purple}colGPA_i = \beta_0 + \beta_1 PC_i + \mu_i$$  

   and report your estimates for $\color{purple}\beta_0$ and $\color{purple}\beta_1$. Interpret these estimates, including a discussion of the magnitudes.  
4. What is the R-squared from the regression? What do you make of its magnitude?  
5. Does your finding in part (iii) imply that owning a PC has a causal effect on **colGPA**? Explain.  

---

### Page 110

#### C4

Use the data in `ATTEND` for this exercise.

1. Obtain the minimum, maximum, and average values for the variables **atndrte**, **priGPA**, and **ACT**.  
2. Estimate the model  

   $$\color{purple}atndrte = \beta_0 + \beta_1 priGPA + \beta_2 ACT + \mu$$  

   and write the results in equation form. Interpret the intercept. Does it have a useful meaning?  
3. Discuss the estimated slope coefficients. Are there any surprises?  
4. What is the predicted **atndrte** if **priGPA = 3.65** and **ACT = 20**? What do you make of this result? Are there any students in the sample with these values of the explanatory variables?  
5. If Student A has **priGPA = 3.1** and **ACT = 21** and Student B has **priGPA = 2.1** and **ACT = 26**, what is the predicted difference in their attendance rates?  

---

#### C6

Use the data set in `WAGE2` for this problem. As usual, be sure all of the following regressions contain an intercept.

1. Run a simple regression of **IQ** on **educ** to obtain the slope coefficient, say, \color{purple}\delta_1$.  
2. Run the simple regression of $\color{purple}\log(wage)$ on **educ**, and obtain the slope coefficient, $\color{purple}\beta_1$.  
3. Run the multiple regression of $\color{purple}\log(wage)$ on **educ** and **IQ**, and obtain the slope coefficients, $\color{purple}\beta_1$ and $\color{purple}\beta_2$, respectively.  
4. Verify that  

   $$\color{purple}\tilde{\beta}_1 = \beta_1 + \beta_2 \delta_1$$  








