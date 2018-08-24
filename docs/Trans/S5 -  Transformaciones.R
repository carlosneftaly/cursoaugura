#' ---
#' title: "S5 - Transformaciones"
#' author: "Nombre y apellido"
#' date: "Mes día,  año"
#' ---

# Nota: recuerde registrar sus datos con las variables en cada columna y las
# observaciones en las filas. La primera fila debe contener los nombres de las
# variables y se debe comenzar en la primera celda (A1)

# Cargar paquetes para análisis
library(lattice)
library(car)
library(multcomp)
library(agricolae)
library(MASS)
# Colocar otros paquetes

# Selección directorio de trabajo y carga de datos: 
# La ubicación cambia según la carpeta donde se fijo el directorio de trabajo. 


# Carga de archivo .csv: 
datos<-read.csv('Datos/Transformaciones.csv',header=T,sep=';')
attach(datos)
# Para verificar la correcta importación de los datos se llama por el nuevo nombre:datos


###############################ANÁLISIS EXPLORATORIOS#####################################################
# Análisis exploratorio: Boxplot superpuesto con stripchart
# Genera un gráfico de bigotes buscando tendecias (tendecia central, dispersión y simetría)
boxplot(Esporas~Tratamiento+Bloque,las=2)
stripchart(Esporas~Tratamiento+Bloque,vert=T,pch=21,col='red',add=T)

# Genera un histograma de la variable respuesta
hist(Esporas,prob=T)
lines(density(Esporas))


# Ajuste de modelo lineal general

modelo1<-lm(Esporas~Tratamiento+Bloque)


################################EVALUACIÓN DE SUPUESTOS#############################################
##EVALUACIÓN DE NORMALIDAD##
#Se continuará trabajando con modelo1 (lm)
shapiro.test(modelo1$residuals)
# Análisis gráfico del modelo
# El comando "par" genera panales 2*2
par(mfrow=c(2,2))
# Gráfico de cuantiles
plot(modelo1)

# Con el comando "par" se vuelve a generar panel de 1*1
par(mfrow=c(1,1))


##EVALUACIÓN DE HOMOGENEIDAD DE VARIANZAS##
##Extraccion de los residuales
residuales<-resid(modelo1)
#Gráfico de cajas y bigotes
boxplot(residuales~Tratamiento, data=datos, ylab="Residuales", xlab="Tratamiento", main="Homogeneidad de residuales") 

#Gráfico de residuales dispersos por tratammiento
#Nota: Aunque se requiere el paquete lattice, este ya se encuentra activo por un paso anterior

stripplot(residuales~Tratamiento, data=datos, ylab="Residuales", xlab="Tratamiento", main="Homogeneidad de residuales")

# Homocedasticidad prueba de Levene 

leveneTest(Esporas~interaction(Tratamiento,Bloque))

#NOTA: Recuerde que los residuales deben cumplir con los supuestos necesarios
#para que el ANOVA sea válido. En caso de que el análisis de residuales muestre
#problemas a este respecto, la variable respuesta debe ser transformada hasta
#que los residuales del modelo ajusten a los supuestos. 


## En este ejemplo no hay normalidad, por lo tanto se requiere hacer transformación del modelo


                #####  Transformación 1 - Logaritmo (log) ##########

# Ajuste de modelo lineal general 
modelo1<-lm(log(Esporas)~Tratamiento+Bloque)

# Normalidad
shapiro.test(modelo1$residuals)    

# Homogeneidad de varianzas
leveneTest(log(Esporas)~interaction(Tratamiento,Bloque))

# Tabla ANOVA
anova(modelo1)


              #####  Transformación 2 - Ráiz cuadrada (sqrt) ##########

# Ajuste de modelo lineal general 
modelo1<-lm(sqrt(Esporas)~Tratamiento+Bloque)

# Normalidad
shapiro.test(modelo1$residuals)    

# Homogeneidad de varianzas
leveneTest(sqrt(Esporas)~interaction(Tratamiento,Bloque))

# Tabla ANOVA
anova(modelo1)



            #####  Transformación 3 - Potencia (X^n) ##########

# Ajuste de modelo lineal general 
modelo1<-lm(Esporas^0.03~Tratamiento+Bloque)

# Normalidad
shapiro.test(modelo1$residuals)    

# Homogeneidad de varianzas
leveneTest(Esporas^0.03~interaction(Tratamiento,Bloque))

# Tabla ANOVA
anova(modelo1)

            #####  Transformación 4 - Boxcox ##########

# modelo lineal general inicial
modelo1<-lm(Esporas~Tratamiento+Bloque)


bc<-boxcox(modelo1, lambda = seq(-2, 2, 1/10), plotit = TRUE,
       interp= T, eps = 1/50, xlab = expression(lambda),
       ylab = "log-Likelihood")

(lambda <- bc$x[which.max(bc$y)])


# Ajuste de modelo lineal general 
modelo2<-lm(Esporas^lambda~Tratamiento+Bloque)

# Normalidad
shapiro.test(modelo2$residuals)    

# Homogeneidad de varianzas
leveneTest(Esporas^lambda~interaction(Tratamiento,Bloque))

# Tabla ANOVA
anova(modelo2)
