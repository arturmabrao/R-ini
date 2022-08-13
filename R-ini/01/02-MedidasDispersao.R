# Estatística Básica -  P2: Medidas de dispersão

#Definindo pasta de trabalho
setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/DS-ini")
getwd()

# Carregamento dataset 
vendas <- read.csv("./R-ini/Data/6-Vendas/Vendas.csv", fileEncoding = "windows-1252")
View(vendas)
#Variância
var(vendas$Valor)

#Desvio Padrão
sd(vendas$Valor)