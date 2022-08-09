
setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/ini-R")
getwd()

vendas <- read.csv("Data/6-Vendas/Vendas.csv", fileEncoding = "windows-1252")

library(ggplot2)

#?qplot
qplot(Valor, Custo, data = vendas) # no PowerBI o dataset 'vendas' se chama 'dataset'