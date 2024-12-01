# Miss specification: Overfitting vs Underfitting

## Underfitting

Omitting Influential Variables

## Overfitting

Including Non-influential Variables

# Functional Forms

-   Linear:

$$\color{purple}{y_i=\beta_1+\beta_2x_{i}+\mu_i}$$

-   Linear-log:

$$ \color{purple}{y_i=\beta_1+\beta_2ln(x_i)+\mu_i}$$

-   Log-linear:

$$
 \color{purple}{ln(y_i)=\beta_1+\beta_2(x_i)+\mu_i}
$$

-   Log-log:

$$
\color{purple}{ln(y_i)=\beta_1+\beta_2ln(x_i)+\mu_i}
$$

-   Exponencial:

$$
\color{purple}{y_i=\beta_0\beta_1^{x_i}\mu_i}
$$

$$
\color{purple}{ln(y_i)=ln(\beta_0)+ln(\beta_1).x_i+ln(\mu_i)}
$$

$$
\color{purple}{ln(y_i)=\beta'_0+\beta'_1x_i+\mu'_i}
$$

-   Potência:

$$
\color{purple}{y_i=\beta_0X_i^{\beta_1}\mu_i}
$$

$$
\color{purple}{ln(y_i)=ln(\beta_0)+\beta_1.ln(x_i)+ln(\mu_i)}
$$

$$
\color{purple}{ln(y_i)=\beta'_0+\beta_1 ln(x_i)+\mu'_i}
$$

-   Polinomial

$$
\color{purple}{y_i=\beta_0+\beta_1x_i+\beta_2x_i^{2}+\mu_i}
$$

$$
\color{purple}{z_i=x'_i=x_i^2}
$$

-   Hiperbólica

$$
\color{purple}{y_i=\beta_0+\beta_1\frac{1}x_i+\mu_i}
$$

$$
\color{purple}{w_i=x'_i=\frac{1}x_i}
$$

## Formas de deteção

Likelihood Ratio statistics:

1.  Omitted Variables test

2.  Redundant Variables test

3.  Ramsey RESET test - 1st oder -\> squared fitted $\color{purple}{y^2}$ ; 2nd order $\color{purple}{y^3}$

## Model selection

1.  All in

2.  Backward selection (parcimonious model)

    y x1 x2 x3

    y x1 x3

3.  Forward selection

    y x1

    y x1 x2

    y x1 x3 x4

4.  Bidirectional elimination - stepwise regression

y x1 **x2** x3 x4

y x1 x3 x4

y x1 x4

y x1 x2 x4

5.  Score Comparison

Minimizar cada um:

-   AIC - Akaike Information Criterion

-   SIC- Schwarz Information Criterion

-   HQ - Hannan-Quinn Criterion