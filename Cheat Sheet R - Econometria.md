# R Cheat Sheet for econometrics

**Carregar bibliotecas**

```R
library(nome_biblioteca)
```


**Importar dados**
```R
#csv
dados <- read.csv("caminho/para/ficheiro.csv")

#xlsx
dados <- read_xlsx("caminho/para/ficheiro.xlsx")
```

**Visualização do `data.frame`**

```R
summary(dados)
head(dados)
```

**Manipulação de dados com `dplyr`**

```R
dados <- dados %>%
  filter(coluna == valor) %>% #filtrar por linha
  mutate(nova_coluna = coluna_existente * 2) #filtrar por coluna
```

**Regressão linear múltipla**

```R
modelo <- lm(dep_var ~ var1 + var2 + var3, dados)
summary(modelo)
```

**Comparar modelos**

```R
library(stargazer)
stargazer(modelo1, modelo2, type=text)
```

