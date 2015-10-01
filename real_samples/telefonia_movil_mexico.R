# Datos obtenidos de: http://busca.datos.gob.mx/#/conjuntos/suscripciones-de-banda-ancha
# Fuente oficial: Instituto Federal de Telecomunicaciones (ift).
# Conjunto de datos: Suscripciones de telefonia movil por cada 100 habitantes.
# Descripcion: Numero de contratos de telefonia movil por cada 100 habitantes en el pais.

setwd("/Users/freddyiniguez/Documents/GitHub/BigData/BigDataZacatecas/Data")
# Obtenemos el conjunto de datos ya limpio
telefonia <- read.csv("suscriptores_telefonia_movil.csv")

### Suscriptores de telefonia movil por cada 100 habitantes del primer semestre ###
suscriptores <- telefonia$suscriptores.por.cada.100.semestre.1
x1 <- barplot(suscriptores, main = "Suscriptores de telefonia movil en Mexico", names.arg = telefonia$anios, cex.names = 0.7, xlab="Periodo 1995 - 2014", ylab = "Numero de suscriptores por cada 100 habitantes, 1er Sem.", beside = TRUE, ylim = c(0,100), col = "#3D56B2")
text(x1, suscriptores, labels = suscriptores, pos = 3, offset = .5, col = "black")

### Suscriptores de telefonia movil del primer semestre ###
suscriptores_total <- telefonia$suscriptores.total.semestre.1
x2 <- barplot(suscriptores_total, main="Suscriptores de telefonia movil en Mexico", names.arg = telefonia$anios, cex.names = 0.7,  xlab = "Periodo 1995 - 2014", ylab = "Numero de suscriptores en total, 1er Sem.", beside = TRUE, ylim = c(0,110000000), col = "#3D56B2")
text(x2, suscriptores_total, labels = suscriptores_total, pos = 3, offset = .5, cex = 0.6, col = "black")