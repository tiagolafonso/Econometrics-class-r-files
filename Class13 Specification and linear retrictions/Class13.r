# class 13 

#limpar ambiente R
rm(list=ls())
#carrega pacotes
library(readxl)

#carrega dados
htv <- read_xlsx("htv.xlsx")

#verificar dados
#tabela de frequencia
table(htv$educ)

#histograma
hist(htv$educ)

#ver data frame
View(htv)

#estatistica descritiva variável educ
summary(htv$educ)

#histograma com curva normal
hist(htv$educ, 
        main="Histogram of Education", #título
        lab="Years of Education", #etiqueta eixo x
        col="lightblue", border="black", prob=TRUE) #cor de fundo, cor do limite, probabilidade
curve(dnorm(x, mean=mean(htv$educ, na.rm=TRUE), #curva normal
                sd=sd(htv$educ, na.rm=TRUE)),  #desvio padrão
                add=TRUE, col="red", lwd=2) #adiciona curva, cor, espessura

#estimar modelo
model <- lm(educ ~ tenure, data=htv)
summary(model)


#ver Kurtosis e Skewness da variável educ

#library - moments
library(moments)

#cacular skewness
moments::skewness(htv$educ)

#calcular Kurtosis
moments::kurtosis(htv$educ)
