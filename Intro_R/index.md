---
title       : Introducción a R 
subtitle    : Curso Análisis de datos experimentales con R
logo        : db.jpg
author      : Carlos Neftaly Lozano A.
job         : www.microbiostats.com 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
license     : by-nc-sa
knit        : slidify::knit2slides
---




## Hablemos de **R**




<img src="./img/R.png" title="plot of chunk unnamed-chunk-2" alt="plot of chunk unnamed-chunk-2" style="display: block; margin: auto;" />

---

## Hablemos de **R**

<img src="./img/Rcurve.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" style="display: block; margin: auto;" />

---

## Hablemos de **R**

<img src=".//img/Ruso.gif" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" style="display: block; margin: auto;" />

---

## Hablemos de **R**

<img src="./img/Rscholar.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" style="display: block; margin: auto;" />

---

## Entornos de desarrollo para R

Una vez instalado, un entorno de desarrollo integrado será necesario para facilitar el desarrollo de códigos en **R**, por lo que se presentan tres de varias opciones para trabajar con **R**. 

|       IDE             |  Link     |
|:---------------------:|-----------|
|   Tinn-R              |https://sourceforge.net/projects/tinn-r/ |
|R-Studio [Recomendado] |https://www.rstudio.com/ |
| R commander (Rcmdr)   |http://www.rcommander.com/ |

![RIDE](https://rstudio.com/wp-content/uploads/2015/10/rstudio-300x260.png)

---

## Rstudio


<img src="./assets/img/Rstudio.png" title="plot of chunk unnamed-chunk-6" alt="plot of chunk unnamed-chunk-6" width="900px" style="display: block; margin: auto;" />

---

## Flujo de trabajo  sugerido en Rstudio

<img src="./assets/img/rcore.png" title="plot of chunk unnamed-chunk-7" alt="plot of chunk unnamed-chunk-7" style="display: block; margin: auto;" />

--- 


## Flujo de trabajo  sugerido en Rstudio

<img src="./assets/img/rf1.png" title="plot of chunk unnamed-chunk-8" alt="plot of chunk unnamed-chunk-8" width="900px" style="display: block; margin: auto;" />

--- 

## Flujo de trabajo  sugerido en Rstudio

<img src="./assets/img/rf2.png" title="plot of chunk unnamed-chunk-9" alt="plot of chunk unnamed-chunk-9" width="900px" style="display: block; margin: auto;" />

--- 

## Flujo de trabajo  sugerido en Rstudio

<img src="./img/rf3.png" title="plot of chunk unnamed-chunk-10" alt="plot of chunk unnamed-chunk-10" width="900px" style="display: block; margin: auto;" />

--- 

## Flujo de trabajo  sugerido en Rstudio

<img src="./img/ef4.png" title="plot of chunk unnamed-chunk-11" alt="plot of chunk unnamed-chunk-11" width="400px" style="display: block; margin: auto;" />

--- 

## Empecemos....... 

<img src="https://media.giphy.com/media/3oz8xOJiQ9VtnOKAIU/giphy.gif" title="plot of chunk unnamed-chunk-12" alt="plot of chunk unnamed-chunk-12" width="550px" style="display: block; margin: auto;" />

--- 

## 0. Estructura de datos 

<img src="./assets/img/dest.png" title="plot of chunk unnamed-chunk-13" alt="plot of chunk unnamed-chunk-13" width="600px" style="display: block; margin: auto;" />


--- 

## 1. Importando datos a R 


> _Tips_: cosas que podrían producir problemas.


+ El _separador decimal_ SIEMPRE SIEMPRE será un punto. 

+ Nombres de columnas: no debe comenzar con números, tienen que ser sencillos y sin espacios ni caracteres especiales.
Como sugerencia, los nombres de columnas deben ser cortos, ya que tendrás que escribirlos muchas veces.

+ _R_ diferencia entre mayúscula y minúscula. `Rosa no es lo mismo que rosa`. 

+ Si en una columna hay _datos faltantes_ se debe dejar `espacio en blanco` o remplazar con `NA` (con mayúsculas).

--- 

## 1. Importando datos a R 

La forma más sencilla de importar un `.csv` es a través del comando `read.csv(...)`, cuya implementación es la siguiente:


```r
read.csv(file, header = TRUE, sep = ",", dec = ".", ...)
```

Dónde:

| Argumentos  | Significado o uso  |
|-------------|-------------------|
| `file`      | Ruta al archivo  |
| `header`    | Valor lógico para determinar si el archivo incluye encabezados en la primera linea.   |
| `sep`       | Este campo sirve para especificar el carácter de separación. |
| `dec`       | El carácter usado para los puntos decimales  |
| `...`       | Ver la documentación para argumentos extras   |


--- 

## 1. Importando datos a R 


Un ejemplo sería el siguiente:


```r
datos <- read.csv("dataframe1.csv",, header=T, sep=';', dec=',')
```

--- 

## 2. Manejando datos
### ¿Que son los __dataframes o conjunto de datos__? 

<img src="./assets/img/df.png" title="plot of chunk unnamed-chunk-14" alt="plot of chunk unnamed-chunk-14" width="400px" style="display: block; margin: auto;" />

---


## 2. Manejando datos
### Inspeccionado el contenido de un `dataframe`

Las funciones `str()`, `head()`, `summary()` pueden ser útiles para verificar el contenido y estructura de un `dataframe`.


```r
head(mtcars)
```

```
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

---

## 2. Manejando datos
### Inspeccionado el contenido de un `dataframe`




```r
str(mtcars)
```

```
## 'data.frame':	32 obs. of  11 variables:
##  $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
##  $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
##  $ disp: num  160 160 108 258 360 ...
##  $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
##  $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
##  $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
##  $ qsec: num  16.5 17 18.6 19.4 17 ...
##  $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
##  $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
##  $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
##  $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

---


## 2. Manejando datos
### Inspeccionado el contenido de un `dataframe`




```r
summary(mtcars)
```

```
##       mpg             cyl             disp             hp       
##  Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0  
##  1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5  
##  Median :19.20   Median :6.000   Median :196.3   Median :123.0  
##  Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7  
##  3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0  
##  Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0  
##       drat             wt             qsec             vs        
##  Min.   :2.760   Min.   :1.513   Min.   :14.50   Min.   :0.0000  
##  1st Qu.:3.080   1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000  
##  Median :3.695   Median :3.325   Median :17.71   Median :0.0000  
##  Mean   :3.597   Mean   :3.217   Mean   :17.85   Mean   :0.4375  
##  3rd Qu.:3.920   3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000  
##  Max.   :4.930   Max.   :5.424   Max.   :22.90   Max.   :1.0000  
##        am              gear            carb      
##  Min.   :0.0000   Min.   :3.000   Min.   :1.000  
##  1st Qu.:0.0000   1st Qu.:3.000   1st Qu.:2.000  
##  Median :0.0000   Median :4.000   Median :2.000  
##  Mean   :0.4062   Mean   :3.688   Mean   :2.812  
##  3rd Qu.:1.0000   3rd Qu.:4.000   3rd Qu.:4.000  
##  Max.   :1.0000   Max.   :5.000   Max.   :8.000
```

---


## 3. Funciones más comunes 

|   Función   |           Matemáticas                 | Función       |           Estadísticas        |
|:-----------:|---------------------------------------|:-------------:|-------------------------------|
|   $sqrt(x)$   | Raíz de $x$                           |    mean(x)    | Media                         |
|    $exp(x)$   | Exponencial de $x$                    |     sd(x)     | Desviación estándar           |
|    $log(x)$   | Logaritmo natural de $x$              |     var(x)    | Varianza                      |
|   $log10(x)$  | Logaritmo base 10                     |   median(x)   | Mediana                       |
|    sum(x)   | Suma de los elementos de $x$          |  quantiles(x) | Quantiles                     |
|   prod(x)   | Producto de los elementos de $x$      |    cor(x,y)   | Correlación                   |
|    sin(x)   | Seno                                  |     max(x)    | Valor máximo                  |
|    cos(x)   | Coseno                                |     min(x)    | Valor mínimo                  |
|    tan(x)   | Tangente                              |    range(x)   | Retorna el máximo y mínimo    |
|  round(x,n) | Redondea a $n$ dígitos                |    sort(x)    | Ordena los elementos de $x$   |
|  cumsum(x)  | Calcula las sumas acumuladas          |    summary    | Resumen de las variables      |
|             | ($x_1, x_1 + x_2, + x_1 +\ldots+x_n$) |  choose(n,k)  | Combinatoria de $n$ sobre $k$ |  

--- 

## Pidiendo ayuda en R 


La documentación de ayuda y soporte en R es completa y de fácil acceso desde la línea de comando. 

### Ayuda general 


```r
help.start()           # Ofrece links de ayuda general
help.search("texto")    # Busca un tema específico
```


```r
?mean  # Para funciones conocidas 

??correlation # Búsuqedas más amplias 
```


---- 

