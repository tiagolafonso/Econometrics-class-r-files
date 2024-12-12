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
 

gpa2 <- read_xlsx("gpa2.xlsx")

#i)
#
#ii) 
model_colgpa <- lm(colgpa ~ hsize + hsizesq+
                    sat + hsperc + female+
                    athlete, gpa2)
summary(model_colgpa)

#iii)
model_colgpa_2 <- lm(colgpa ~ hsize + hsizesq+
                    hsperc + female+
                    athlete, gpa2)
summary(model_colgpa_2)

#iv)
model_colgpa_3 <- lm(colgpa ~ hsize + hsizesq+
                    sat + hsperc + female+
                    athlete+female:athlete, gpa2)
summary(model_colgpa_3)

#v)
model_colgpa_4 <- lm(colgpa ~ hsize + hsizesq+
                    sat + hsperc + female+
                    athlete+female:sat, gpa2)
summary(model_colgpa_4)

#exemplo extra
##converter female=1 para male=1
gpa2$male <- 1-gpa2$female
model_colpgpa_6 <- lm(colgpa ~ female, data = gpa2)
model_colpgpa_7 <- lm(colgpa ~ male, data = gpa2)
stargazer(model_colpgpa_6, model_colpgpa_7, type="text")

###    ###
### C9 ###
###    ###
rm(list = ls())
#
k401k <- read.csv("k401ksubs.csv"))
head(k401k)

#i)
#
table(k401k$e401k)


#ii)
modelo_e401k <- lm(e401k ~ inc + age + male + incsq + agesq, data = k401k)
summary(modelo_e401k)

#iii)


#iv)
k401k$e401k_hat <- fitted(modelo_e401k)
summary(k401k$e401k_hat)

#v) 
?ifelse
k401k$e401k1 <- ifelse(k401k$e401k_hat >=  0.5,1,0) 
table(k401k$e401k1)

#vi)
newdata <- k401k %>% dplyr::select(e401k, e401k_hat, e401k1)

str(k401k)
#
actual <- as.factor(k401k$e401k)
predicted <- as.factor(k401k$e401k1)

confusionMatrix(actual, predicted, positive = "1")
confusionMatrix(actual, predicted, positive = "0")

#vii
model_k401k_2 <- lm(e401k ~inc + age + male + incsq + agesq + pira, 
                          data = k401k)
summary(model_k401k_2)