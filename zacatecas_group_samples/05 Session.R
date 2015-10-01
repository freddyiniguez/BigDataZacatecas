setwd("/Users/freddyiniguez/Downloads/")
dataset <- read.csv("matricula_ejercicio.csv")

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