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

#load data
meapsingle <- read_xlsx("meapsingle.xlsx") 

#i)
model1 <- lm(pctsgle ~ math4, data = meapsingle)
summary(model1)

#ii)
model2 <- lm(pctsgle ~ math4 + lmedinc + free , data = meapsingle)
summary(model2)

stargazer(model1, model2, type = "text")

#iii)
#correlation between variables lmedinc and free.
cor(meapsingle$lmedinc, meapsingle$free)

#the sign is negative and expected. 

#iv)
vif(model2)

model3 <- lm(pctsgle ~ math4 + lmedinc , data = meapsingle)
vif(model3)
model4 <- lm(pctsgle ~ math4 + free , data = meapsingle)
vif(model4)

stargazer(model2, model3,model4, type = "text")
