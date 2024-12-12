# Explanation of wdi_14.r

This script performs data analysis on World Development Indicators (WDI) for Portugal. The objective is to load the data, process it, and visualize certain economic indicators over time.

## Code Explanation

### Clear Workspace
```r
rm(list=ls())
library(tidyverse)
library(modelsummary)
library(WDI)
library(gridExtra)
```
These lines load the necessary libraries:

-   `tidyverse`: A collection of R packages for data manipulation and visualization.
-   `modelsummary`: For summarizing statistical models.
-   `WDI`: For accessing World Development Indicators.
-   `gridExtra`: For arranging multiple grid-based plots.

```r
#WDI GDP constant lcu, Exports constant lcu, Population, Trade, GFCF constant lcu for Portugal
wdi_data <- WDI(country = "PT", indicator = c("NY.GDP.MKTP.KN", "NE.EXP.GNFS.KN", "SP.POP.TOTL", "NE.TRD.GNFS.ZS", "NE.GDI.FTOT.KN"), start = 1990, end = 2020, extra = FALSE)
```

This line retrieves WDI data for Portugal from 1990 to 2020, including GDP, exports, population, trade, and gross fixed capital formation (GFCF).

**Rename Variables**

```r
wdi_data <- wdi_data %>% rename(year = year, 
                                gdp = NY.GDP.MKTP.KN, 
                                exports = NE.EXP.GNFS.KN, 
                                population = SP.POP.TOTL, 
                                trade = NE.TRD.GNFS.ZS, 
                                gfcf = NE.GDI.FTOT.KN)
```

This chunk renames the variables to shorter and more readable names.

**Plot GDP Over Time**

```r
p1 <- ggplot(wdi_data, aes(x = year, y = gdp)) +
  geom_line() +
  labs(title = "GDP over time",
       x = "Year",
       y = "GDP (constant LCU)") +
       theme_minimal()
```

This code creates a line plot of GDP over time using `ggplot2`.

**Generate 1st Difference of GDP**
    
```r
wdi_data <- wdi_data %>% mutate(gdp_diff = gdp - lag(gdp))
```

This line calculates the first difference of GDP, which measures the change in GDP from one year to the next.

**Plot 1st Difference of GDP Over Time**
    
```r
p2 <- ggplot(wdi_data, aes(x = year, y = gdp_diff)) +
  geom_line() +
  labs(title = "1st difference of GDP over time",
       x = "Year",
       y = "GDP Difference (constant LCU)") +
       theme_minimal()
```

This code creates a line plot of the first difference of GDP over time using `ggplot2`.


**Arrange Plots**

```r
#p1 and p2
grid.arrange(p1, p2, nrow = 2)
```

This line arranges the two plots (`p1` and `p2`) in a grid with 2 rows using the `grid.arrange` function from the `gridExtra` package.

**Generate Dummy Variable for Financial Crisis**
    
```r
    #gen dummy variable for financial crisis (2009-2013)
wdi_data <- wdi_data %>% mutate(fc = ifelse(year >= 2009 & year <= 2013, 1, 0))
```

This line creates a dummy variable `fc` that takes the value 1 for the years 2009-2013 (during the financial crisis) and 0 otherwise.

**Regression of GDP on Financial Crisis Dummy**

```r
#regression of GDP on financial crisis dummy
lm_gdp_fc <- lm(gdp ~ fc, data = wdi_data)
summary(lm_gdp_fc)
modelsummary(lm_gdp_fc)
```

This chunk performs a linear regression of GDP on the financial crisis dummy variable and summarizes the model.

**Regression of GDP on GFCF and Trade**

```r
#regression of gdp on gfcf and trade
lm_gdp_gfcf_trade <- lm(gdp ~ gfcf + trade, data = wdi_data)
modelsummary(lm_gdp_gfcf_trade)
```

This code performs a linear regression of GDP on gross fixed capital formation (GFCF) and trade, and summarizes the model.

**Regression of GDP on GFCF and Exports**
    
```r
#regression of gdp on gfcf and exports
lm_gdp_gfcf_exports <- lm(gdp ~ gfcf + exports, data = wdi_data)
modelsummary(lm_gdp_gfcf_exports)
```

This code performs a linear regression of GDP on GFCF and exports, and summarizes the model.

**Check for Conditional Heteroskedasticity (ARCH Test)**

```r
#check conditional hetereroskedasticity for lm_gdp_gfcf_trade - ARCH test
library(lmtest)
library(FinTS)
ArchTest(residuals(lm_gdp_gfcf_trade))
```

This chunk checks for conditional heteroskedasticity in the `lm_gdp_gfcf_trade` model using the ARCH test.

Model Specification Test (RESET Test)

```r
#model specification for lm_gdp_gfcf_trade
reset(lm_gdp_gfcf_trade, power = 1)
```

This line performs a RESET test to check the model specification of the `lm_gdp_gfcf_trade` model.

**CUSUM and CUSUM of Squares Test for Coefficient Stability**

```r
#CUSUM and CUSUM of squares test for coefficient stability
library(strucchange)
sctest(lm_gdp_gfcf_trade)
#Cusum test for parameter stability
sctest(lm_gdp_gfcf_trade, type = "parameter")
```

These lines perform CUSUM and CUSUM of squares tests to check the stability of the coefficients in the `lm_gdp_gfcf_trade` model.

**Variance Inflation Factor (VIF) for Multicollinearity**

```r
#vif for multicollinearity
library(car)
vif(lm_gdp_gfcf_trade)
```

This code calculates the Variance Inflation Factor (VIF) to check for multicollinearity in the `lm_gdp_gfcf_trade` model.

**Log-Log Regression of GDP on GFCF and Exports**

```r
#log regression of gdp on gfcf and exports
lm_gdp_gfcf_exports_log <- lm(log(gdp) ~ log(gfcf) + log(exports), data = wdi_data)
modelsummary(lm_gdp_gfcf_exports_log)
```

This chunk performs a log-log linear regression of GDP on GFCF and exports, and summarizes the model.