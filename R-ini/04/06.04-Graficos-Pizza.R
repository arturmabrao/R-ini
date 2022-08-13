# Parte 5.3
# Plotando Gráficos com ggplot2

setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/DS-ini")
getwd()

# Gráfico de Pizza - Pie Chart
fatias <- c(4, 12, 24, 76, 18)
paises<- c("Brasil", "EUA", "Alemanha", "UK", "Espanha")
pie(fatias, labels = paises, main = "Valores aleatorios")

# Graf. Pizza 3D
install.packages("plotrix")
library(plotrix)
pie3D(fatias, labels = paises, explode = 0.1, main = "Valores aleatorios")
