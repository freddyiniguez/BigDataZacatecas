# Datos obtenidos de: http://busca.datos.gob.mx/#/conjuntos/suscripciones-de-banda-ancha
# Fuente oficial: Instituto Federal de Telecomunicaciones (ift).
# Conjunto de datos: Suscripciones de telefonia movil por cada 100 habitantes.
# Descripcion: Numero de contratos de telefonia movil por cada 100 habitantes en el pais.

setwd("/Users/freddyiniguez/Documents/GitHub/BigData/BigDataZacatecas/Data")
# Obtenemos el conjunto de datos ya limpio
telefonia <- read.csv("suscriptores_telefonia_movil.csv")

# Suscriptores de telefonia movil por cada 100 habitantes del primer semestre
suscriptores <- telefonia$suscriptores.por.cada.100.semestre.1
barplot(suscriptores, main = "Suscriptores de telefonia movil en Mexico", names.arg = telefonia$anios, xlab="Periodo 1995 - 2014", ylab = "Por cada 100 habitantes, 1er Sem.")

# Suscriptores de telefonia movil del primer semestre
suscriptores_total <- telefonia$suscriptores.total.semestre.1
barplot(suscriptores_total, main="Suscriptores de telefonia movil en Mexico", names.arg = telefonia$anios, xlab = "Periodo 1995 - 2014", ylab = "Suscriptores total, 1er Sem.")