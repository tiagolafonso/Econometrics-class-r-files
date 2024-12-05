##                ##
##  Class19 code  ##
##                ##

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

#importar ficheiro
ceosal <- read.csv("ceosal1.csv")

##
## C4
##
model_lsalary <- lm(log(salary)~log(sales)+roe+finance+consprod+utility,ceosal)
summary(model_lsalary)

#i
#extrair coeficiente
b_utility <- coef(model_lsalary)["utility"]
b_utility
#ii
#compute exact percentage difference (epd)
epd_b_utility <- 100*(exp(b_utility)-1)
epd_b_utility

#iii - excluir uma 
model_lsalary_ <- lm(log(salary)~log(sales)+roe+consprod+utility+indus,ceosal)
#or
model_lsalary_2 <- lm(log(salary)~log(sales)+roe+finance+utility+indus,ceosal)
summary(model_lsalary_)
stargazer(model_lsalary_,model_lsalary_2,type = "text") #comparar modelos


##
## C1
##
rm(list=ls())
gpa <- read_xlsx("gpa1.xlsx")

#i
model_gpa_full <- lm(colGPA~PC+hsGPA+ACT+mothcoll+fathcoll,gpa)
summary(model_gpa_full)
#or
summary(lm(colGPA~PC+hsGPA+ACT+mothcoll+fathcoll,gpa))
#or
lm(colGPA~PC+hsGPA+ACT+mothcoll+fathcoll,gpa) %>% summary()

#modelo sem mothcoll e fathcoll
model_gpa <- lm(colGPA~PC+hsGPA+ACT,gpa)
model_performance(model_gpa)
stargazer(model_gpa,model_gpa_full,type="text") #comparar modelos

#ii
#null: mothcoll=fathcoll=0 ou mothcoll=0 & fathcoll=0
?linearHypothesis #ver sintaxe da função
linearHypothesis(model_gpa_full,c("mothcoll=0","fathcoll=0"))

#iii
#calcular hsGPA_sq e adicionar ao data frame
gpa <- gpa %>% mutate(
  hsGPA_sq=hsGPA^2
)
#or
gpa$hsGPA_sq <- gpa$hsGPA^2

#estimar modelo
model_gpa_full_2 <- lm(colGPA~PC+hsGPA+ACT+mothcoll+fathcoll+hsGPA_sq,gpa)
summary(model_gpa_full_2)
stargazer(model_gpa_full,model_gpa_full_2,type="text")

###
### c6
###

rm(list = ls())
sleep <- read_xlsx("sleep75.xlsx")

#i)
#opção1
#criar 2 sub sample

?dplyr::filter #ver sintaxe da função

#sub sample male=1
sleep_male <- filter(sleep,male==1)
#sub sample male=0
sleep_female <- filter(sleep,male==0)

#estimar equação sub sample male
m_male <- lm(sleep~totwrk+educ+age+agesq+yngkid,sleep_male)

#estimar equação female
m_female <- lm(sleep~totwrk+educ+age+agesq+yngkid,sleep_female)

stargazer(m_male,m_female,type = "text")

#########################################
#opção2
#Utilizar o argumento "subset" da função "lm"

m2_male <- lm(sleep~totwrk+educ+age+agesq+yngkid,subset=(male==1),sleep)
m2_female <- lm(sleep~totwrk+educ+age+agesq+yngkid,subset=(male==0),sleep)
stargazer(m2_male,m2_female,type="text")

#ii
full_model <- lm(sleep~totwrk+educ+age+agesq+yngkid+male,sleep)
summary(full_model)

###    ###
### c8 ###
###    ###

rm(list=ls())

#load data loanapp
loanapp <- read.csv("loanapp.csv")
head(loanapp)

#i)
#estimar modelo
lpm_approve <- lm(approve~white+other,loanapp)
summary(lpm_approve)

#positivo

#ii)
lpm_approve_white <- lm(approve~white,loanapp)
summary(lpm_approve_white)

#iii)
#estimar modelo
lpm_approve_full <- lm(approve~white+other+hrat+obrat+loanprc+unem+male+
                                married+dep+sch+cosign+chist+pubrec+mortlat1+mortlat2+vr, loanapp)
summary(lpm_approve_full)
stargazer(lpm_approve,lpm_approve_full,type="text")

#iv)
lpm_approve_int <- lm(approve~white+obrat+white*obrat, loanapp)

summary(lpm_approve_int)
#v) white=1, obrat=32
predict(lpm_approve_int, data.frame(white=1,obrat=32), type="response")
#90.85%
