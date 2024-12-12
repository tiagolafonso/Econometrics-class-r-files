##          ### 
## class 20 ###
##          ###

rm(list=ls())
ch <- function () {
  write(""+file=".blank")
  loadhistory(".blank")
  unlink(".blank")
}
ch()


library(readxl)
library(stargazer)
library(tidyverse) 
library(systemfit)
library(caret)
library(magrittr)
library(mfx)
library(performance)
library(lmtest)
library(moments)
library(AER)
library(MASS)
library(scales)
library(sandwich)
library(nlme)
library(skedastic)
library(tseries)
library(modelsummary)

#load data htv file
htv <- read.csv("htv.csv")
head(htv) #show an overview of the data

#i)
model_wage <- lm(log(wage)~educ+abil+exper+nc+west+south+urban, data=htv)
summary(model_wage)
#educ coef 0.10378
#wage: hourly wage

#ii) filtro educ<16
htv_sub <- dplyr::filter(htv,educ<16)
model_wage_sub <- lm(log(wage)~educ+abil+exper+nc+west+south+urban, data=htv_sub)
model_wage_sub <- lm(log(wage)~educ+abil+exper+nc+west+south+urban,subset = (educ<16), data=htv)

stargazer(model_wage,model_wage_sub,type="text")
modelsummary(list(model_wage,model_wage_sub))

#iii) educ<16 e wage<20
htv_sub2 <- dplyr::filter(htv,educ<16 & wage<20)
htv_sub3<-filter(htv_sub, wage<20)
model_wage_sub2 <- lm(log(wage)~educ+abil+exper+nc+west+south+urban, data=htv_sub2)
stargazer(model_wage,model_wage_sub2,type="text")
modelsummary(list(model_wage,model_wage_sub2))

##     ##
## C14 ##
##     ##

#carregar dados happiness
happiness<- read_xlsx("happiness.xlsx")

# estimar probit
model_happiness <- glm(vhappy~occattend+regattend, family=binomial(link="probit"), data=happiness)
# average partial effects probit
probitmfx(model_happiness, atmean=FALSE, data=happiness)

#lpm version
lpm_happiness2 <- lm(vhappy~occattend+regattend, data=happiness)
summary(lpm_happiness2)

# Médias dos efeitos marginais - Probit
#           Estimate Std. Error t value Pr(>|t|)
#occattend 0.0038930 0.0081476 0.4778 0.6328
#regattend 0.1122008 0.0114677 9.7840 <2e-16 ***

#Coeficiente do modelo linear de probabilidade - OLS
#occattend   0.003829   0.008089   0.473    0.636
#regattend   0.112062   0.010814  10.362   <2e-16 **

##     ##
## C15 ##
##     ##

rm(list=ls())

#carregar dados alcohol
alcohol<- read.csv("alcohol.csv")

#i) 
table(alcohol$employ)
8822/(8822+1000)

table(alcohol$status)

table(alcohol$abuse)
974/(8848+974)

#ii)
#modelo lpm
model_alcohol_lpm <- lm(employ~abuse, data=alcohol)
?lm
coeftest(model_alcohol_lpm, vcov=vcovHAC(model_alcohol_lpm, type="HC1"))
#coeficiente de abuse: -0.0283

#iii)

#modelo probit
model_alcohol_probit <- glm(employ~abuse, family=binomial(link="probit"), data=alcohol)
#average partial effects
probitmfx(model_alcohol_probit, atmean=FALSE, data=alcohol)
summary(model_alcohol_lpm)

#lpm: abuse       -0.028305   0.010206  -2.773  0.00556 **
# ape_prob: abuse -0.028305  0.011142 -2.5403  *

# iv)
# fitted lpm e probit
alcohol$fitted_lpm <- fitted(model_alcohol_lpm)
alcohol$fitted_probit <- fitted(model_alcohol_probit)

View(alcohol)

#v)
model_alcohol_lpm_full <- lm(employ~abuse+age+agesq+educ+
                      educsq+married+famsize+northeast+
                      midwest+south+centcity+outercity+qrt1+
                      qrt2+qrt3, data=alcohol)

#compara modelos
stargazer(model_alcohol_lpm,model_alcohol_lpm_full, type="text")
modelsummary(list(model_alcohol_lpm,model_alcohol_lpm_full))

#vi)
#modelo probit
model_alcohol_probit_full <- glm(employ~abuse+age+agesq+educ+
                      educsq+married+famsize+northeast+
                      midwest+south+centcity+outercity+qrt1+
                      qrt2+qrt3, family=binomial(link="probit"), data=alcohol)
# ape_probit
probitmfx(model_alcohol_probit_full, atmean=FALSE, data=alcohol)
