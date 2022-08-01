# Estatística Básica -  P2: Medidas de dispersão

#Definindo pasta de trabalho
setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/ini-R/Data/6-Vendas")
getwd()

# Carregamento dataset 
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Variância
var(vendas$Valor)

#Desvio Padrão
sd(vendas$Valor)