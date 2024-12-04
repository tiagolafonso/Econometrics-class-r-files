rm(list = ls())

library(tidyverse)
library(skedastic)
library(performance)
library(nlme)
library(readxl)
library(lmtest)
library(tseries)

#carregar dados
hprice1 <- read_xlsx("hprice1_r.xlsx")

#overview do dataset
summary.data.frame(hprice1)

#regressão - modelo base (model_0)
model_0 <- lm(data=hprice1,
        formula = price~lotsize+sqrft+bdrms)
# ver modelo
summary(model_0)

#acrescentar residuos
hprice1$uhat <- resid(model_0)

#acrecentar valores previstos/ajustados
hprice1$yhat <- fitted(model_0)

#ver dataset com novas variáveis
View(hprice1)

#gráfico de dispersão - heterocedasticidade
plot(hprice1$sqrft,
    hprice1$price,
    xlab="Área",
    ylab="Variável Dependente Price",
    main="Observar Heterocedasticidade")

#criar erro ao quadrado e previsão ao quadrado
hprice1$uhatsq <- hprice1$uhat^2
hprice1$yhat <- hprice1$yhat^2

#gráfico de  2 - heterocedasticidade
plot(hprice1$yhat,
    hprice1$uhatsq,
    xlab="previsão de price",
    ylab="quadrado do erro",
    main="Observar Heterocedasticidade")

#teste de Breusch-Pagan
#modelo do teste BP
model_bp <- lm(formula = uhatsq~lotsize+sqrft+bdrms,
    data = hprice1)


# calcular LM

#obter bº de variáveis independentes do modelo
(k1<-model_bp$rank-1)
#obter r2 do modelo
(r2<-summary(model_bp)$r.squared)
#obter número de observações
(n <- nobs(model_bp))
# calcular lM
(LMstat<-n*r2)

?pchisq
#calcular p-value - chi-square
(pvalue<-pchisq(LMstat,df=k1,lower.tail = FALSE))

#confimrar com função 
breusch_pagan(model_0) #comparar os valores da probabilidade e os valores das estatísticas

