---
title       : ANOVA FACTORIAL
subtitle    : Curso Análisis de datos experimentales con R
logo        : db.jpg
author      : Carlos Neftaly Lozano A.
job         : www.microbiostats.com 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, quiz, bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
license     : by-nc-sa
---


## ANOVA: Tabla ANOVA

  <span style="display:block; height: 4cm;"></span>

|            |  Df|   Sum Sq| Mean Sq| F value| Pr(>F)|
|:-----------|---:|--------:|-------:|-------:|------:|
|Tratamiento |   3| 2256.167| 752.056| 782.267|      0|
|Residuals   | 796|  765.259|   0.961|      NA|     NA|

---

---&twocol

## ANOVA

*** =left
![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2-1.png)

*** =right

 <span style="display:block; height: 4cm;"></span>
 

|            | Df| Sum Sq| Mean Sq| F value| Pr(>F)|
|:-----------|--:|------:|-------:|-------:|------:|
|Tratamiento |  3| 59.444|  19.815|  20.089|      0|
|Residuals   | 16| 15.782|   0.986|      NA|     NA|


---

## Anova factorial: 2 x 2 

\[\underbrace{Y_{ij}}_{Respuesta} = \underbrace{\bar{\mu}}_{\text{Media global}} + \underbrace{\tau_i}_{\text{Efecto del factor 1}} + \underbrace{\beta_i}_{\text{Efecto del factor 2}}+  \underbrace{(\tau \beta)_{ij}}_{\text{Efecto de la interacción}}+\underbrace{e_{ij}}_{\text{Error aleatorio}} \]

--- 

## Anova factorial: 2 x 2 


<img src="./assets/img/crf.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" style="display: block; margin: auto;" />

--- 


## Partición de la Varianza 

\[ SS_{total}= SS_{\alpha}+ SS_{\beta}+ SS_{\alpha \beta}+SS_{error} \]

Siendo, 

+ $\alpha$: Factor 1 

+ $\beta$: Factor 2

+  $\alpha \beta $: Interacción



---


## Partición de la Varianza 

<img src="./assets/img/2via.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" style="display: block; margin: auto;" />
	
--- 


## Efectos a evaluar

<img src="./assets/img/efectos2.png" title="plot of chunk unnamed-chunk-6" alt="plot of chunk unnamed-chunk-6" style="display: block; margin: auto;" />

---

## Efectos a evaluar

<img src="./assets/img/efectos.png" title="plot of chunk unnamed-chunk-7" alt="plot of chunk unnamed-chunk-7" style="display: block; margin: auto;" />

---

## Hipótesis


### Factor A 
+ 	\[H_0(A):\mu_1=\mu_2\]
	
### Factor B

+ 	\[H_0(B):\mu_1=\mu_2\]
	
### Interacción AB 

+ 	\[H_0(AB):(\alpha \beta)_{ij}=0\]

---
