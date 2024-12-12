rm(list=ls())

#load libraries
library(tidyverse)
library(modelsummary)
library(WDI)
library(gridExtra)

#
# Load data

#search variables for Portugal in wdi
WDIsearch("Portugal")

#WDI GDP constant lcu, Exports constant lcu, Population, Trade, GFCF constant lcu for Portugal
wdi_data <- WDI(country = "PT", indicator = c("NY.GDP.MKTP.KN", "NE.EXP.GNFS.KN", "SP.POP.TOTL", "NE.TRD.GNFS.ZS", "NE.GDI.FTOT.KN"), start = 1990, end = 2020, extra = FALSE)


#change variable names to a shorter version
wdi_data <- wdi_data %>% rename(year = year, 
                                gdp = NY.GDP.MKTP.KN, 
                                exports = NE.EXP.GNFS.KN, 
                                population = SP.POP.TOTL, 
                                trade = NE.TRD.GNFS.ZS, 
                                gfcf = NE.GDI.FTOT.KN)


#plot gdp over time
p1 <- ggplot(wdi_data, aes(x = year, y = gdp)) +
  geom_line() +
  labs(title = "GDP over time",
       x = "Year",
       y = "GDP (constant LCU)")+
       theme_minimal()

#gen 1st difference of gdp
wdi_data <- wdi_data %>% mutate(gdp_diff = gdp - lag(gdp))

#plot 1st difference of gdp over time
p2 <- ggplot(wdi_data, aes(x = year, y = gdp_diff)) +
  geom_line() +
  labs(title = "1st difference of GDP over time",
       x = "Year",
       y = "GDP (constant LCU)")+
       theme_minimal()
#p1 aand p2
grid.arrange(p1, p2, nrow = 2)
#gen dummy variable for financial crisis (2009-2013)
wdi_data <- wdi_data %>% mutate(fc = ifelse(year >= 2009 & year <= 2013, 1, 0))

#regression of gdp on fc
lm_gdp_fc <- lm(gdp ~ fc, data = wdi_data)
summary(lm_gdp_fc)
modelsummary(lm_gdp_fc)

#regression of gdo on gfcf and trade
lm_gdp_gfcf_trade <- lm(gdp ~ gfcf + trade, data = wdi_data)
modelsummary(lm_gdp_gfcf_trade)
#regression of gdo on gfcf and exports
lm_gdp_gfcf_exports <- lm(gdp ~ gfcf + exports, data = wdi_data)
modelsummary(lm_gdp_gfcf_exports)

#check conditional hereroskedasticity for lm_gdp_gfcf_trade - ARCH test
library(lmtest)
library(FinTS)
ArchTest(residuals(lm_gdp_gfcf_trade))

#model specification for lm_gdp_gfcf_trade
reset(lm_gdp_gfcf_trade, power = 1)

#CUSUM ans CUSUM of squares test for coefficient stability
library(strucchange)
sctest(lm_gdp_gfcf_trade)
#Cusum test for parameter stability
sctest(lm_gdp_gfcf_trade, type = "parameter")

#vif for multicollinearity
library(car)
vif(lm_gdp_gfcf_trade)

#log regressiopn of gdp on gfcf an exports
lm_gdp_gfcf_exports_log <- lm(log(gdp) ~ log(gfcf) + log(exports), data = wdi_data)
modelsummary(lm_gdp_gfcf_exports_log)
