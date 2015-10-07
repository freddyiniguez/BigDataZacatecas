setwd("/Users/freddyiniguez/Downloads/")
dataset <- read.csv("matricula_ejercicio.csv")

# EJERCICIO 1: Obtener un gráfico de barras que indique el número de mujeres ingenieras en Zacetecas del 2010 al 2015
# Forma limpia de obtener los datos
# Toma los num??ricos, omite los headers y dem??s textos
zac <- as.numeric(dataset[32,])
# Debido a que la primera columna aparece el n??mero de ??ndice, ??ste se omite.
zacatecas <- zac[2:6]

# Forma sucia de obtener los datos
mujeres <- c(dataset$X2010.2011[32],dataset$X2011.2012[32],dataset$X2012.2013[32],dataset$X2013.2014[32],dataset$X2014.2015[32])
ciclos <- c("2010-2011", "2011-2012", "2012-2013", "2013-2014", "2014-2015")

x <- barplot(zacatecas,
             main = "Mujeres Ingenieras en Zacatecas",
             ylab = "Numero de mujeres",
             names.arg = ciclos,
             col = "red",
             ylim = c(0,4000))
text(x, zacatecas, labels = zacatecas, pos = 3, offset = .5)

# EJERCICIO 2: 
# - Crear una gráfica de barras que muestre las mujeres inscritas durante el ciclo 2014-2015
# Le damos un margen al área de ploteado, siguiendo el patrón: bottom, left, top, right.
par(mar=c(6,8,5,5))
barplot(dataset$X2014.2015, names.arg = dataset$ENTIDAD, las = 1, main = "Número de mujeres inscritas en ingeniería en México", xlab = "Número de mujeres inscritas en ingeniería", sub = "Durante el ciclo escolar 2014-2015", col = rainbow(length(dataset$ENTIDAD)), horiz = TRUE, beside = TRUE, cex.names = 0.8)

text(temp, dataset$X2014.2015, labels = dataset$X2014.2015, pos = 3, offset = 0.5, col = "red")
# - Crear un histograma y un box plot de los datos de las mujeres inscritas en ingeniería y tecnología durante el ciclo 2010 - 2015


# EJERCICIO 3:
# - Crear una gráfica de barras segmentada con los siguientes datos
#   MUNICIPIO DE ZAPOPAN      HOMBRES       MUJERES
#   * Arcos de Zapopan        8,354         8,931
#   * Constitución            13,381        14,074
#   * Jardines del Valle      10,136        10,528
#   * Miramar                 13,824        13,924
#   * Santa Lucía             11,877        12,158
municipios = data.frame(
  "Arcos de Zapopan" = c(8354, 8931),
  "Constitución" = c(13381, 14074),
  "Jardines del Valle" = c(10136, 10528),
  "Miramar" = c(13824, 13924),
  "Santa Lucía" = c(11877, 12158)
)
barplot(as.matrix(municipios), main = "Municipios de Zapopan", col = c("blue", "pink"), cex.names = 0.8, xlab = "Porcentaje de hombres y mujeres", ylab = "Población total", sub = "de diferentes municipios de Zapopan", ylim = c(0,30000))


