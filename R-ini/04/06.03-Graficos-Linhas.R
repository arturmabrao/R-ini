# Parte 5.4
# Plotando Gráficos com ggplot2

#setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/ini-R/Export-RFiles")
#getwd()

carros <- c(1, 3, 6, 4, 9)
caminhoes <- c(2, 5, 4, 5, 12)

# Plotando, item por item, gráfico de linhas
plot(carros, type = "o", col = "blue",  ylim = c(0, 12))
lines(caminhoes, type = "o", pch = 22, lty = 2, col= "red")
title(main = "Produção de veículos", col.main = "red", font.main = 3)