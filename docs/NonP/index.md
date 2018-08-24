---
title       : Métodos No - Paramétricos
subtitle    : Diseño de Experimentos    
author      : Carlos Neftaly Lozano A., Msc
logo     : EM.png
job         : www.microbiostats.com
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, quiz, bootstrap]     # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
license     : CC 
knit        : slidify::knit2slides
---

## Supuestos ANOVA


<img src="figure/unnamed-chunk-1-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />



--- .class #id 

## Supuestos ANOVA


<img src="./assets/img/homoced.png" title="plot of chunk unnamed-chunk-2" alt="plot of chunk unnamed-chunk-2" style="display: block; margin: auto;" />

---

## ¿Y qué pasa si fallan.... ?

<img src="./assets/img/Confs.gif" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" style="display: block; margin: auto;" />

---

## Prueba de Kruskal - Wallis 

 + Método no paramétrico que permite comparar, en un solo test, las __medianas__ de un conjunto de k muestras independientes.
 
 + Análogo a la ANOVA de una vía 
 
 + Útil cunado no se cumplen supuestos de normalidad y homogeneidad de varianzas

  + Una buena opción cuando se tiene muestra pequeña

---

## ¿ Cómo funciona ? 

<img src="./assets/img/tabla1.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" style="display: block; margin: auto;" />

---

## ¿ Cómo funciona ? 

<img src="./assets/img/tabla2.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" style="display: block; margin: auto;" />

---

## ¿ Cómo funciona ? 

<img src="./assets/img/tabla3.png" title="plot of chunk unnamed-chunk-6" alt="plot of chunk unnamed-chunk-6" style="display: block; margin: auto;" />

\[SS_{factor} =\sum  \Big[ n_g(Med_g - Med_{total})^2 \Big]\]

---

## Kruskal - Wallis estadístico _H_

\[H=\frac{SS_{factor}}{N(N+1)/12}\]

---


