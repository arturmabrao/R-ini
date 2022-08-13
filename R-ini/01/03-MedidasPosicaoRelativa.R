# Parte 3

setwd("D:/Estudo/Tecnologias/BI/PowerBI/Cap12/R/ini-R/Data/6-Vendas")
getwd()

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

head(vendas)
tail(vendas)
View(vendas)

summary(vendas$Valor)
summary(vendas[c('Valor','Custo')]) # c = função de criação de vetor em R

mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.2))
IQR(vendas$Valor) #diferença entre Q1 e Q3
range (vendas$Valor)
summary(vendas$Valor)
diff(range(vendas$Valor))