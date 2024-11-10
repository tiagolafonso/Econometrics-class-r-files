#class 17
#
rm(list=ls())
ch <- function () {
  write("", file=".blank")
  loadhistory(".blank")
  unlink(".blank")
}
ch()


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

#import jtrain2.xlsx
jtrain <- read_excel("jtrain2.xlsx")
head(jtrain)

#i
table(jtrain$train)
max(jtrain$mostrn)

#ii
model <- lm(train~unem74+unem75+age+educ+hisp+married,jtrain)
summary(model)

#iii
probit_model <- glm(train~unem74+unem75+age+educ+hisp+married,
                    family=binomial(link="probit"),
                    data=jtrain)
summary(probit_model)

lrtest(probit_model)

#iv
#theoretical


#v
model_2 <- lm(unem78~train,jtrain)
summary(model_2)

#vi
model_probit <- glm(unem78~train,
                    family=binomial(link="probit"),
                    data=jtrain)
summary(model_probit)

#vii
jtrain <- jtrain %>% mutate(
    fit_lpm=fitted(model_2),
    fit_probit=fitted(model_probit)
)

jtrain$fit_lpm <- fitted(model_2)
jtrain$fit_probit <- fitted(model_probit)

summary(jtrain$fit_lpm)

#viii
summary(model_2)

#
#c12
rm(list=ls())

charity <- read_xlsx("charity.xlsx")
#i
table(charity$respond)
1707/(1707+2561)

#ii
probit_model <- glm(respond~resplast+weekslast+propresp+
                    mailsyear+avggift,family = binomial(link="probit"),
                    charity)
summary(probit_model)

#iii
ape_probit_model <- probitmfx(probit_model,atmean = FALSE, data=charity)
ape_probit_model

#estimate LPM
lpm_model <- lm(respond~resplast+weekslast+propresp+
                mailsyear+avggift, charity)
summary(lpm_model)
