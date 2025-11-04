# Especificação de Modelos Econométricos
Prof. Tiago Afonso
2025-11-04

- [<span class="toc-section-number">1</span> Especificação de Modelos
  Econométricos](#especificação-de-modelos-econométricos)
  - [<span class="toc-section-number">1.1</span> Escolha das Variáveis
    Independentes](#escolha-das-variáveis-independentes)
  - [<span class="toc-section-number">1.2</span> Underfitting e
    Overfitting](#underfitting-e-overfitting)
    - [<span class="toc-section-number">1.2.1</span> Exemplo de
      Underfitting](#exemplo-de-underfitting)
    - [<span class="toc-section-number">1.2.2</span> Exemplo de
      Overfitting](#exemplo-de-overfitting)
  - [<span class="toc-section-number">1.3</span> Formas Funcionais do
    Modelo](#formas-funcionais-do-modelo)
    - [<span class="toc-section-number">1.3.1</span> Modelo
      Linear](#modelo-linear)
    - [<span class="toc-section-number">1.3.2</span> Modelo
      Linear-Log](#modelo-linear-log)
    - [<span class="toc-section-number">1.3.3</span> Modelo
      Log-Linear](#modelo-log-linear)
    - [<span class="toc-section-number">1.3.4</span> Modelo
      Log-Log](#modelo-log-log)
    - [<span class="toc-section-number">1.3.5</span> Modelo
      Exponencial](#modelo-exponencial)
    - [<span class="toc-section-number">1.3.6</span> Modelo de
      Potência](#modelo-de-potência)
    - [<span class="toc-section-number">1.3.7</span> Modelo
      Polinomial](#modelo-polinomial)
    - [<span class="toc-section-number">1.3.8</span> Modelo
      Hiperbólico](#modelo-hiperbólico)
    - [<span class="toc-section-number">1.3.9</span> Exemplos de Teorias
      Económicas e Formas
      Funcionais](#exemplos-de-teorias-económicas-e-formas-funcionais)
  - [<span class="toc-section-number">1.4</span> Interações entre
    Variáveis](#interações-entre-variáveis)
    - [<span class="toc-section-number">1.4.1</span> Exemplo: Educação,
      Experiência e Salário](#exemplo-educação-experiência-e-salário)
  - [<span class="toc-section-number">1.5</span> Testes de
    Especificação](#testes-de-especificação)
    - [<span class="toc-section-number">1.5.1</span> Tipos de
      Testes](#tipos-de-testes)
- [<span class="toc-section-number">2</span> Critérios para Seleção de
  Modelos](#critérios-para-seleção-de-modelos)
  - [<span class="toc-section-number">2.1</span> Critérios
    Principais](#critérios-principais)
    - [<span class="toc-section-number">2.1.1</span> AIC
      (Akaike)](#aic-akaike)
    - [<span class="toc-section-number">2.1.2</span> BIC
      (Bayesiano)](#bic-bayesiano)
    - [<span class="toc-section-number">2.1.3</span>
      Comparação](#comparação)
  - [<span class="toc-section-number">2.2</span> Métodos de Seleção de
    Modelos](#métodos-de-seleção-de-modelos)
    - [<span class="toc-section-number">2.2.1</span> 1. All
      In](#1-all-in)
    - [<span class="toc-section-number">2.2.2</span> 2. Backward
      Elimination](#2-backward-elimination)
    - [<span class="toc-section-number">2.2.3</span> 3. Forward
      Selection](#3-forward-selection)
    - [<span class="toc-section-number">2.2.4</span> 4. Stepwise
      Regression](#4-stepwise-regression)
    - [<span class="toc-section-number">2.2.5</span> 5. Score
      Comparison](#5-score-comparison)
  - [<span class="toc-section-number">2.3</span> Estabilidade dos
    Coeficientes ao Longo do
    Tempo](#estabilidade-dos-coeficientes-ao-longo-do-tempo)
    - [<span class="toc-section-number">2.3.1</span> Chow
      Test](#chow-test)
    - [<span class="toc-section-number">2.3.2</span> CUSUM
      Test](#cusum-test)
    - [<span class="toc-section-number">2.3.3</span> CUSUM of
      Squares](#cusum-of-squares)
    - [<span class="toc-section-number">2.3.4</span> Resumo dos
      Testes](#resumo-dos-testes)
  - [<span class="toc-section-number">2.4</span> Conclusão](#conclusão)

> **📋 Objetivos da Aula**
>
> - Compreender os conceitos de especificação de modelos
> - Identificar problemas de underfitting e overfitting
> - Conhecer diferentes formas funcionais
> - Aplicar critérios de seleção de modelos

# Especificação de Modelos Econométricos

> **💡 O que é Especificação?**
>
> A **especificação** envolve três decisões fundamentais:
>
> 1.  **Escolha das variáveis independentes**
> 2.  **Forma funcional do modelo**
> 3.  **Consideração de interações entre variáveis**

## Escolha das Variáveis Independentes

A seleção das variáveis independentes deve ser baseada em:

**Teoria Económica**  
Fundamentação teórica sólida para inclusão de variáveis

**Evidências Empíricas**  
Estudos anteriores e literatura relevante

**Conhecimento do Domínio**  
Experiência e intuição sobre o fenómeno estudado

## Underfitting e Overfitting

> **⚠️ Underfitting**
>
> **Underfitting** ocorre quando o modelo é **demasiado simples** para
> capturar a complexidade dos dados.
>
> **Consequências:** - Alta variância - Baixa precisão - Não captura
> padrões importantes

### Exemplo de Underfitting

![](Class-15---Specification_files/figure-commonmark/underfitting-1.png)

> **🚨 Overfitting**
>
> **Overfitting** ocorre quando o modelo é **demasiado complexo**,
> capturando o ruído dos dados em vez do padrão subjacente.
>
> **Consequências:** - Baixa variância nos dados de treino - Alta
> precisão aparente nos dados de treino - Péssimo desempenho em novos
> dados

### Exemplo de Overfitting

![](Class-15---Specification_files/figure-commonmark/overfitting-1.png)

## Formas Funcionais do Modelo

> **📊 Tipos de Formas Funcionais**
>
> A escolha da forma funcional adequada é crucial para capturar
> corretamente a relação entre variáveis.

### Modelo Linear

$$
\color{blue}{y_i=\beta_1+\beta_2x_{i}+\mu_i}
$$

> **Interpretação:** Uma unidade de aumento em $x$ resulta em $\beta_2$
> unidades de mudança em $y$

### Modelo Linear-Log

$$
\color{blue}{y_i=\beta_1+\beta_2\ln(x_i)+\mu_i}
$$

> **Interpretação:** 1% de aumento em $x$ resulta em $\beta_2/100$
> unidades de mudança em $y$

### Modelo Log-Linear

$$
\color{blue}{\ln(y_i)=\beta_1+\beta_2(x_i)+\mu_i}
$$

> **Interpretação:** Uma unidade de aumento em $x$ resulta em
> $100\beta_2\%$ de mudança em $y$

### Modelo Log-Log

$$
\color{blue}{\ln(y_i)=\beta_1+\beta_2\ln(x_i)+\mu_i}
$$

> **Interpretação:** 1% de aumento em $x$ resulta em $\beta_2\%$ de
> mudança em $y$ (elasticidade)

### Modelo Exponencial

$$
\color{green}{y_i=\beta_0\beta_1^{x_i}\mu_i}
$$

Forma logarítmica: $$
\color{green}{\ln(y_i)=\ln(\beta_0)+\ln(\beta_1) \cdot x_i+\ln(\mu_i)}
$$

$$
\color{green}{\ln(y_i)=\beta'_0+\beta'_1x_i+\mu'_i}
$$

### Modelo de Potência

$$
\color{orange}{y_i=\beta_0X_i^{\beta_1}\mu_i}
$$

Forma logarítmica: $$
\color{orange}{\ln(y_i)=\ln(\beta_0)+\beta_1 \cdot \ln(x_i)+\ln(\mu_i)}
$$

$$
\color{orange}{\ln(y_i)=\beta'_0+\beta_1 \ln(x_i)+\mu'_i}
$$

### Modelo Polinomial

$$
\color{purple}{y_i=\beta_0+\beta_1x_i+\beta_2x_i^{2}+\mu_i}
$$

Onde: $\color{purple}{z_i=x'_i=x_i^2}$

> **Uso:** Captura relações não-lineares, como custos marginais
> crescentes

### Modelo Hiperbólico

$$
\color{red}{y_i=\beta_0+\beta_1\frac{1}{x_i}+\mu_i}
$$

Onde: $\color{red}{w_i=x'_i=\frac{1}{x_i}}$

> **Uso:** Relações inversas, como lei dos rendimentos decrescentes

### Exemplos de Teorias Económicas e Formas Funcionais

#### Lei de Engel

**Teoria:** Rendimento e despesa alimentar  
**Forma funcional:** Linear-log

$$
\color{blue}{foodexp_i=\beta_0+\beta_1\ln(income_i)+\mu_i}
$$

> **Interpretação:** A lei de Engel sugere que a **proporção do
> rendimento gasta em alimentos diminui** à medida que o rendimento
> aumenta. A relação linear-log captura este padrão perfeitamente.

#### Função Cobb-Douglas

**Teoria:** Função de produção  
**Forma funcional:** Log-log

$$
\color{blue}{Y_i=AK_i^{\alpha}L_i^{\beta}\mu_i}
$$

> **Interpretação:** Permite estimar **elasticidades de produção** em
> relação ao capital ($\alpha$) e trabalho ($\beta$). Se
> $\alpha + \beta = 1$, há rendimentos constantes à escala.

#### Função de Procura

**Teoria:** Procura de mercado  
**Forma funcional:** Exponencial

$$
\color{blue}{Qd_i=\beta_0\beta_1^{P_i}\mu_i}
$$

> **Interpretação:** Captura a **sensibilidade da quantidade procurada**
> em relação ao preço de forma não-linear.

#### Função de Custo

**Teoria:** Custos de produção  
**Forma funcional:** Polinomial

$$
\color{blue}{C_i=\beta_0+\beta_1Q_i+\beta_2Q_i^{2}+\mu_i}
$$

> **Interpretação:** Permite capturar **economias e deseconomias de
> escala**. Se $\beta_2 < 0$, há economias de escala; se $\beta_2 > 0$,
> há deseconomias.

#### Curva de Phillips

**Teoria:** Inflação e desemprego  
**Forma funcional:** Polinomial

$$
\color{blue}{\pi_i=\beta_0+\beta_1u_i+\beta_2u_i^{2}+\mu_i}
$$

> **Interpretação:** Captura a **relação não linear** entre inflação e
> desemprego, permitindo modelar o trade-off de política económica.

#### Curva de Kuznets

**Teoria:** Desigualdade e desenvolvimento  
**Forma funcional:** Hiperbólica

$$
\color{blue}{Inequality_i=\beta_0+\beta_1\frac{1}{GDP_i}+\mu_i}
$$

> **Interpretação:** Sugere uma **relação inversa** entre desigualdade e
> rendimento per capita - países mais ricos tendem a ter menor
> desigualdade.

## Interações entre Variáveis

> **O que são Interações?**
>
> As **interações entre variáveis** permitem capturar **efeitos
> combinados** que não são evidentes quando as variáveis são
> consideradas isoladamente.
>
> **Exemplo:** O efeito da educação sobre o salário pode depender da
> experiência de trabalho.

### Exemplo: Educação, Experiência e Salário

$$
\color{purple}{salary_i=\beta_0+\beta_1educ_i+\beta_2exper_i+\beta_3(educ_i \times exper_i)+\mu_i}
$$

**Onde:**

| Variável                | Tipo         | Descrição            |
|-------------------------|--------------|----------------------|
| $salary_i$              | Dependente   | Salário (em dólares) |
| $educ_i$                | Independente | Anos de educação     |
| $exper_i$               | Independente | Anos de experiência  |
| $educ_i \times exper_i$ | Interação    | Efeito combinado     |

> **Interpretação do Termo de Interação**
>
> O termo $\beta_3(educ_i \times exper_i)$ captura a **interação** entre
> educação e experiência.
>
> **Exemplo prático:**  
> Se $\beta_3=0.10$, significa que **cada ano adicional de educação
> aumenta o efeito da experiência no salário em 10%**.
>
> Ou seja, a educação **amplifica** o retorno da experiência!

## Testes de Especificação

> **Likelihood Ratio Test (LR Test)**
>
> O **Teste de Razão de Verossimilhança** é utilizado para comparar
> modelos e detectar problemas de especificação.

### Tipos de Testes

#### Omitted Variable Test

**Objetivo:** Detectar variáveis relevantes omitidas no modelo

#### Redundant Variable Test

**Objetivo:** Identificar variáveis desnecessárias no modelo

#### Ramsey’s RESET Test

**Objetivo:** Testar a forma funcional do modelo

- $\color{purple}{\hat{y}^2}$ → 2ª ordem
- $\color{purple}{\hat{y}^3}$ → 3ª ordem

------------------------------------------------------------------------

> **Porquê o Likelihood Ratio?**
>
> A estatística **Likelihood Ratio** compara a verossimilhança de dois
> modelos:
>
> - **Modelo Restrito:** versão simplificada
> - **Modelo Irrestrito:** versão completa
>
> **Permite avaliar:** Se a inclusão de variáveis adicionais melhora
> significativamente o ajuste do modelo aos dados.

> **O que é Verossimilhança?**
>
> A **verossimilhança** de um modelo é uma medida da **probabilidade de
> observar os dados** dados os parâmetros do modelo.
>
> É calculada como o produto das probabilidades individuais dos dados
> sob o modelo especificado.

# Critérios para Seleção de Modelos

> **Comparação de Critérios de Informação**
>
> Os critérios de informação ajudam a escolher entre modelos
> concorrentes, balanceando ajuste e complexidade.

## Critérios Principais

### AIC (Akaike)

**Critério de Informação de Akaike (AIC)**

- Avalia a qualidade do modelo econométrico  
- Penaliza a complexidade do modelo  
- **Menor AIC = Melhor modelo**

**Foco:** Modelo com **melhor ajustamento** aos dados, considerando a
complexidade

### BIC (Bayesiano)

**Critério de Informação Bayesiano (BIC)**

- Semelhante ao AIC  
- **Penaliza mais fortemente** a complexidade  
- **Menor BIC = Modelo preferível**

**Foco:** Modelo **mais simples**, evitando o overfitting

### Comparação

| Critério | Penalização | Melhor para   |
|----------|-------------|---------------|
| **AIC**  | Moderada    | Previsão      |
| **BIC**  | Forte       | Interpretação |

> **Regra Prática**
>
> - Use **AIC** quando o objetivo é **previsão**
> - Use **BIC** quando prefere **parcimónia** (modelos simples)

## Métodos de Seleção de Modelos

### 1. All In

**Estratégia:** Incluir **todas** as variáveis independentes disponíveis

**Modelo completo:** $y \sim x_1 + x_2 + x_3 + ... + x_n$

**Atenção:** Risco de overfitting

### 2. Backward Elimination

**Estratégia:** Modelo **parcimonioso** - eliminar variáveis

**Processo:** 1. Começar com **todas** as variáveis 2. Remover
iterativamente as **menos significantes** 3. Baseado em critério (ex:
valor-p)

**Exemplo:**

    Passo 1: y ~ x1 + x2 + x3
             ↓ (remover x2)
    Passo 2: y ~ x1 + x3

### 3. Forward Selection

**Estratégia:** Adicionar variáveis progressivamente

**Processo:** 1. Começar **sem variáveis** 2. Adicionar iterativamente
as **mais significantes**

**Exemplo:**

    Passo 1: y ~ x1
             ↓ (adicionar x2)
    Passo 2: y ~ x1 + x2
             ↓ (adicionar x4)
    Passo 3: y ~ x1 + x2 + x4

### 4. Stepwise Regression

**Estratégia:** Eliminação **bidirecional** (adiciona E remove)

**Processo:** - Combina forward e backward - Mais flexível e completo

**Exemplo:**

    Passo 1: y ~ x1 + x2 + x3 + x4
             ↓ (remover x2)
    Passo 2: y ~ x1 + x3 + x4
             ↓ (remover x3)
    Passo 3: y ~ x1 + x4
             ↓ (adicionar x2)
    Passo 4: y ~ x1 + x2 + x4

### 5. Score Comparison

**Estratégia:** Comparar modelos pelos critérios de informação

**Minimizar cada um:**

| Critério    | Nome Completo                          |
|-------------|----------------------------------------|
| **AIC**     | Akaike Information Criterion           |
| **SIC/BIC** | Schwarz/Bayesian Information Criterion |
| **HQ**      | Hannan-Quinn Criterion                 |

Escolher modelo com **menor** valor

## Estabilidade dos Coeficientes ao Longo do Tempo

> **Testes de Estabilidade Estrutural**
>
> Verificar se os coeficientes do modelo permanecem constantes ao longo
> do tempo é crucial para a validade das inferências.

### Chow Test

**Teste de Chow**

**Objetivo:** Verificar mudanças estruturais nos coeficientes

**Como funciona:** - Compara modelo com coeficientes **constantes** -
vs. modelo com coeficientes **variáveis**

**Aplicação:** Detectar quebras estruturais (crises, mudanças de
política)

**Exemplo de uso:**

    H₀: Não há mudança estrutural
    H₁: Há mudança estrutural

### CUSUM Test

**Cumulative Sum Control Chart**

**Objetivo:** Verificar se a média dos resíduos se desvia de zero

**Como funciona:** - Calcula soma acumulada dos resíduos - Se há mudança
estrutural → padrão distinto

**Interpretação:** Resíduos devem oscilar em torno de zero

**Visualização:**

            ↑ Limite Superior
    --------|------------------
       CUSUM flutuando
    --------|------------------
            ↓ Limite Inferior

### CUSUM of Squares

**CUSUM dos Quadrados**

**Objetivo:** Detectar mudanças na **variância** dos resíduos

**Como funciona:** - Extensão do CUSUM Test - Analisa soma acumulada dos
**resíduos ao quadrado**

**Útil para:** Identificar heterocedasticidade ao longo do tempo

**Aplicação prática:** - Mudanças em volatilidade - Crises financeiras -
Alterações em políticas

### Resumo dos Testes

| Teste      | Deteta                   | Foco                   |
|------------|--------------------------|------------------------|
| **Chow**   | Mudanças estruturais     | Coeficientes           |
| **CUSUM**  | Desvios sistemáticos     | Média dos resíduos     |
| **CUSUM²** | Mudanças de volatilidade | Variância dos resíduos |

------------------------------------------------------------------------

## Conclusão

A **especificação adequada** de um modelo econométrico é fundamental
para:

- Obter estimadores não enviesados  
- Fazer inferências válidas  
- Produzir previsões precisas  
- Interpretar corretamente as relações económicas

**Lembre-se:** Um bom modelo equilibra **simplicidade** e **adequação**
aos dados!
