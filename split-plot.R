#' ---
#' title: "Sesión 3 ANOVA - Split-plot (DCA)"
#' author: "Nombre y apellido"
#' date: "Mes día,  año"
#' ---


# Nota: recuerde registrar sus datos con las variables en cada columna y las
# observaciones en las filas. La primera fila debe contener los nombres de las
# variables y se debe comenzar en la primera celda (A1)

# Cargar paquetes para análisis
library(lattice)
library(car)
require(multcomp)
require(agricolae)


# Carga de archivo .csv: 
datos<-read.csv('datasets/oats.csv',header=T,sep=';')
attach(datos)

### Visualización 

with(datos, xyplot(Yield ~ Nitro | Variedad, groups = Bloque))


### Miremos un ejemplo analizando los datos como ANOVA - FACToriAL, es decir omitiendo las parcelas

mod.bad <- lm(Yield ~ Variedad * Nitro)
anova(mod.bad)


## En split-plot 

mod.sp <- aov(Yield ~ Variedad * Nitro + Error(Bloque/Variedad))
summary(mod.sp)


